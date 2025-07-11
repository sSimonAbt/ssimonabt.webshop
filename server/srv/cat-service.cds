using my.webshop as my from '../db/schema';

service CatalogService {
    @readonly entity Customers as projection on my.Customers;
    @readonly entity Orders as projection on my.Orders;
    @readonly entity OrderItems as projection on my.OrderItems;
    @readonly entity Products as projection on my.Products;
}
