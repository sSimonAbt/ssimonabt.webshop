namespace my.webshop;

//using { Country } from '@sap/cds/common';

entity Products {
  key ID : UUID;
  
  name: String(24);
  description: String;
  

}
entity Customers {
key ID : UUID;

name : String;
surname : String; 
dateOfBirth : Date;
country : String;
zipCode : String(5); 
Street : String;
HouseNumber : Int16;

}

entity Orders {

key ID : UUID; 
orderedAt : Timestamp; 
orderedBy : Association to Customers;
Status : String;
item : Association to many OrderItems;
}

entity OrderItems {

key ID : UUID;
product : Association to Products;
quantity : Int16;
Status : String; 
}