package com.example.multitenancy.controller;

import com.example.multitenancy.entity.CollegeTest;
import com.example.multitenancy.repo.CollegeTestRepo;
import com.example.multitenancy.service.TableService;
import lombok.NoArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/college-test")
@NoArgsConstructor
public class MultiTenantRoutingController {

    private static final Logger log = LoggerFactory.getLogger(MultiTenantRoutingController.class);

    public static final InheritableThreadLocal<String> usernameContextHolder = new InheritableThreadLocal<>();

    @Autowired
    private CollegeTestRepo repo;

    @Autowired
    private TableService tableService;

    @GetMapping
    public String test() {
        final List<CollegeTest> collegeTestList = repo.findAll();
        System.out.println(collegeTestList);
        return "I am failed on 3108";
    }

    @PostMapping("/{username}")
    public String save(@PathVariable("username") String username, @RequestBody CollegeTest college) {
        usernameContextHolder.set(username);
        final CollegeTest save = repo.save(college);
        return String.valueOf(save.id);
    }

    @PostMapping("create-table/{tableName}/{tenantId}")
    public String createDynamicTable(@PathVariable("tenantId") String username, @PathVariable("tableName") String tableName,
                                     @RequestBody Map<String, String> tableMeta) {
        usernameContextHolder.set(username);

        StringBuilder tableCreation = new StringBuilder();
        tableCreation.append("CREATE TABLE "+ tableName + "(");
        final String columns = tableMeta.entrySet().stream()
                .map(entry -> {
                    return entry.getKey() + " " + entry.getValue();
                }).collect(Collectors.joining(", "));

        log.info("columns {}", columns);
        tableCreation.append(columns);
        tableCreation.append(");");

        log.info("Table SQL {}", tableCreation.toString());

        final String table = tableService.createTable(tableCreation.toString());
        return table;
    }

    @PostMapping("insert-table/{tableName}/{tenantId}")
    public String insertIntoTable(@PathVariable("tenantId") String username,
                                  @PathVariable("tableName") String tableName,
                                     @RequestBody Map<String, String> tableMeta) {
        usernameContextHolder.set(username);
        final String columns = tableMeta.get("columns");
        final String values = tableMeta.get("values");
        StringBuilder insertQueryBuilder = new StringBuilder("INSERT INTO ");
        insertQueryBuilder.append(tableName)
                .append("(").append(columns).append(")")
                .append("VALUES (").append(values).append(");");

        log.info("Insert Query: {}", insertQueryBuilder.toString());

        tableService.insertIntoTable(insertQueryBuilder.toString());

        return insertQueryBuilder.toString();
    }

    @GetMapping("/create-schema/{schemaName}")
    public String createSchema(@PathVariable String schemaName) {
        final String schema = tableService.createSchema(schemaName);
        return schema;
    }

    @GetMapping("/create-schema-and-initialize/{schemaName}")
    public String createSchemaAndRefreshDatasource(@PathVariable String schemaName) {
        final String schema = tableService.createSchemaAndRoutingDatasource(schemaName);
        return schema;
    }

}
