# Transformation of ER Model to Relational Model

The ER diagram provides a model in a diagrammatic representation, while the relational model gives output in the tabular form of the ER model. The relational model, in short, gives the conceptual schema of the ER model.

## ER Diagram to Relational Diagram

There is a combination of several participations, cardinality, and other constraints in the ER diagram. Rules for making the relational diagram are as follows:

1. **Strong Entity**:
   - Strong entities become tables in the ER model.
   - The entity's primary key becomes the table's primary key.
   - Foreign keys establish relations in the relational table.

2. **Weak Entity**:
   - Weak entities, dependent on strong entities, have their tables.
   - One of the primary key entries becomes the primary key for the weak entity set table.
   - Attributes of connected strong entities can be sets or relations of the weak entities.

3. **Attribute Handling**:
   - Single-value attributes are combined into a single column in the table.
   - Composite attributes are represented by separate attributes for each constituent attribute.
   - Multivalued attributes have no repetition to avoid redundancy. They may result in a composite primary key.

4. **Derived Attributes**: 
   - Derived attributes are not shown in the tables.

5. **Advanced DBMS Functionality**:
   - **Generalization**:
     - Method 1: Both upper-level and current-level tables are created, showing attributes for each level.
     - Method 2: Only child tables are created, removing redundancy. Overlapping generalizations may cause redundancy.
   - **Aggregation**: 
     - Tables are formed based on the number of relations the aggregation follows.
   - **Unary Relation**:
     - Basic tables with simple relationships are created for unary relations.
   - **Compound Key**:
     - Compound keys are formed by combining two or more primary keys.
