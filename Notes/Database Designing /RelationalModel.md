## Relational Model

The relational model is a type of data model used to show the relationship between the data and the data schema. In this model, the data is represented in tabular form called relational tables.

In the relational model, the tables are themselves the relations, and there's no need to make outer connections. The attributes are the columns, and the rows represent the entries or the raw user data participating in the database. These rows are called tuples in the database.

Some official definitions in the relational model include:

1. **Degree**: The total number of attributes in the relational table.
2. **Cardinality**: The total number of tuples in the tables of the model.

The conceptual schema of the database is designed based on two attributes:

1. ER model
2. Relational schema
3. RDBMS: Software used to implement the second point.

### What Are RDBMS?

RDBMS stands for Relational Database Management Systems. Examples include MySQL, Oracle, and others.

### How Is the Triangular/Diamond Relationship Shown in the Relational Model?

The diamond relationships here are called foreign key connections. The foreign keys are used to make connections between two relational tables. A tuple is used to show a single data point in the relation.

### Relational Key

These are the attributes that are used to define each tuple.

### Properties of the Relational Table

1. The name of the table is very distinct and not the same anywhere.
2. The values in the relational model are atomic and not breakable. This means these are non-composite attributes and cannot be divided further.
3. Attributes must also have unique names and values.
   - The tables must follow the integrity constraints across the tables and must have the data consistency with the appropriate tuple inputs.

### What Are the Keys?

1. Redundant Attribute: Those that are not needed but are still there.
2. Super Key (SK): Any permutation and combination that uniquely defines or identifies each attribute.
3. Candidate Key: Minimum subsets that can uniquely identify each tuple. It cannot have any redundant attributes. Useless attributes are those that are removed.
4. Alternate Key: All candidate keys except the primary key.
5. Composite Key: These are the primary and composite keys of the total attribute, but the length is a minimum of 2, inclusive.

The most repetition or those attributes which could be the same for several tuples would also be counted as the redundant attribute.

### Difference Between Primary and Candidate Key

The primary key is a candidate key that has a number of attributes.

- **Super Key**: Can be null, and candidate keys cannot be null.
- All the primary and candidate keys are the super key of the attribute.

### Table Relationships

The table in which the primary key of a table is the foreign key is called the child table, reference table, or parent table relation table.

- **Compound Key**: The primary key that is formed using the two foreign keys.

### Surrogate Key

This is basically the synthetic primary key that is used to auto-generate the key in the table. In this, the integer value is an auto-generated one.

### What Are the Integrity Constraints?

The integrity constraints are:

- CURD operations: Create, Update, Read, and Delete.
  To do the CURD operations, we have to maintain proper check of the integrity constraints... are being maintained.
- Information about the integrity constraints:
  These integrity checks are very important to lead to a failure if not maintained properly. A corrupt database is formed when the wrong datatype is put into the databases.

Basically, integrity constraints are the defining of the variables during the making of the key.

- **Domain**: Int, varchar, etc.
- **Entity**: This is the defining of the null constraints. But in short, the primary key of the entity model or the relation model cannot be null in any case.

### Referential Relation

- **Insert Constraint**: In the foreign key table, if there are no corresponding attributes, then you cannot put any attribute in that. This means those entries can only be added where the foreign keys are the ones that can be taken as the input.
- **Delete Constraint**: The attribute cannot be removed from the parent if the attribute is in the child.
- **Delete ON Cascade Command**: This helps in the reduction of the inconsistency of the database.

Syntax:
Reference from `tb_name` and the particular function (`delete cascade` in this case).

### Is It Possible to Have a Null Foreign Key?

Yes, the value of the foreign key can be null in a model or maybe in the relational model.

Example:
Remove entry/table/query from the table, and on deletion, make the foreign key as null in both foreign key and the corresponding table.

The delete on the cascade command is visible only when the value of the entry is removed from the parent, and the corresponding key value in the child has to be made as null to make the database consistent.

### Key Constraints

These are used in the time of the making of the table in SQL.

- **Not Null**: This is the default fixed value that may be 0, but it cannot be unassigned and maybe left in the table. This has to be defined by any of the chances.

Example of the definition:
If the name is none in any table entry, the output will be an error; no CRUD operation is possible.

### Key Constraints

1. **Unique Constraint**: These are the values that are used to make the table and the value as unique. In a particular table, there can be many unique attributes possible, but in the case of the primary key, these are only one in each table, and the overall sense is very restricted.

2. **Default Constraint**: These are used to set the column of the particular entry to some constant so that whenever the new customer is there, we can just find out if the default constraint has to be adjusted or not. The possible values of the default constraint are 0 and 1.

3. **Check Constraint**: These are used to check and value the range of the user input on some of the entry in the table.

### Primary Key Constraint

The whole main point of this is used to show that each tuple output can be identified uniquely and this cannot be null ever. This is always unique in the context.
