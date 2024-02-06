## DBMS Architecture

**Abstraction:**
The hiding of the working of the data is called abstraction, and the view is called the abstract view. The DBMS provides an abstract view of the data present in the structured form of tables. It hides unnecessary table data that does not need to be accessed.

**Three Schema Architecture:**
1. **Physical/Internal Data:**
   - Lowest level of abstraction.
   - Uses low-level data structures.
   - Describes the internal view of the data in the DBMS.
   - Goal: Efficient access of data.

2. **Logical Level:**
   - Conceptual level describing the data in tables.
   - Used to store the content of the data in the DBMS and tables.
   - Defines DB algorithms for data storage efficiency.

3. **View Level/External Level:**
   - Highest level describing system interaction by providing different views to different levels.
   - Provides a view schema.
   - Contains several subschemas.
   - Provides security at various parts of the DBMS.

**Instance of DBMS:**
- The inputs or values stored in a database at a given point in time.
- Overall design of the DBMS with logical, physical, and external schema is called the schema.

**Data Models:**
- Provides a way to define the design or schema of the DB.
- Conceptual way of defining data, data relationships, and data semantics.
- Examples: ER model, relational model, object-oriented model, object-relational model.

**Database Language:**
- **Data Definition Language (DDL):** Specifies the database schema.
- **Data Manipulation Language (DML):** Expresses database queries and updates.
  - Contains retrieval, insertions, deletions, and updates.
- SQL has both DML and DDL.

**Database Administrator:**
- Central control of both data and programs.
- Tasks include schema definition, storage structure, access methods, authorization methods, and routine maintenance.

**Server Architecture:**
- Servers like T1, T2, and T3.
- WWW architecture is one of the best applications.
- Tier-3 network has high latency due to many connected networks.
- Scalability is a factor in distributed networks and distributed servers.

