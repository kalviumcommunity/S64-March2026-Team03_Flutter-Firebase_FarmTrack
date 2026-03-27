# Firestore Database Schema Design

## Project Title  
FarmTrack — Firestore Database Schema Design

---

## Overview  
This task focuses on designing a structured and scalable Cloud Firestore database for the application. The goal is to define how data will be organized using collections, documents, and subcollections to support real-time and efficient data handling.

The design ensures clarity, scalability, and performance for future application growth.

---

## Data Requirements  

The application requires storing the following data:

- Users  
- Orders  
- Products (farm produce)  
- Delivery status  
- Farmer details  

These entities represent the core functionality of the application and are structured accordingly.

---

## Firestore Data Model  

Firestore follows a collection → document → subcollection structure.

### Collections and Documents  

**users**  
- userId  
  - name  
  - email  
  - phoneNumber  
  - address  
  - createdAt  

**products**  
- productId  
  - name  
  - category  
  - price  
  - quantity  
  - farmerId  
  - createdAt  

**orders**  
- orderId  
  - userId  
  - productIds  
  - totalPrice  
  - status  
  - createdAt  

**farmers**  
- farmerId  
  - name  
  - location  
  - contactDetails  

---

## Subcollections  

Subcollections are used to manage scalable and related data.

### Example  

orders/{orderId}/items  
- itemId  
  - productId  
  - quantity  
  - price  

This structure ensures that order items are stored separately and can scale efficiently.

---

## Field Design Principles  

- Used consistent naming conventions (lowerCamelCase)  
- Chose appropriate data types (string, number, boolean, timestamp)  
- Added timestamps for tracking creation and updates  
- Avoided deeply nested structures  
- Used references (IDs) instead of duplicating data  

---

## Sample Data Representation  

The database stores structured documents representing users, products, and orders, with references linking related entities.

Each document contains clearly defined fields to maintain consistency and readability.

---

## Schema Diagram (To Be Added)  

- Collection hierarchy  
- Document structure  
- Subcollection relationships  

(Add diagram image or link here)

---

## Validation Checklist  

- Data structure aligns with application requirements  
- Supports scalability for large datasets  
- Maintains logical grouping of related data  
- Uses subcollections for expandable data  
- Field naming and types are consistent  
- Schema is easy to understand and maintain  

---

## Reflection  

### Why This Structure Was Chosen  
The structure separates core entities into collections and uses references to maintain relationships. This ensures flexibility and avoids data duplication.

### Performance and Scalability Benefits  
- Efficient querying using indexed collections  
- Real-time updates supported by Firestore  
- Scalable structure for large datasets  
- Reduced read and write costs  

### Challenges Faced  
- Deciding when to use subcollections  
- Structuring relationships between entities  
- Maintaining balance between normalization and performance  

---

## Key Learnings  

- Firestore uses a flexible NoSQL structure  
- Proper schema design improves performance  
- Subcollections help manage large datasets  
- Clear data modeling is essential for scalability  

---

## Conclusion  

This implementation demonstrates how to design a clean and scalable Firestore database schema. A well-structured database ensures efficient data handling, improved performance, and easier future development.