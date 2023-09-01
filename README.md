# Description:
This repository showcases a robust and efficient approach to achieving multitenancy in your application using a single database with schema separation. Multitenancy is a common architectural pattern that allows multiple tenants (users, organizations, clients) to share the same application while keeping their data isolated.

# What I Did:

## Dynamic Schema Creation: 
We've implemented a solution that dynamically creates and manages schemas within a single PostgreSQL database for each tenant. This ensures data separation without the overhead of managing multiple database instances.

## Schema Routing: 
To achieve seamless multitenancy, we've integrated schema routing into the data access layer. Each request automatically routes to the appropriate schema, allowing tenants to work in isolation while sharing the same application codebase.

## Custom DataSource Management: 
We provide a custom DataSource manager that allows you to create, update, and remove DataSources for each schema on the fly, making tenant management a breeze.

## Dynamic Default DataSource: 
Our solution enables you to dynamically set the default DataSource for the application, making it easy to switch between tenants as needed.

## Sample Application: 
Included in this repository is a sample Spring Boot application that demonstrates how to implement this multitenant architecture in a real-world scenario.
