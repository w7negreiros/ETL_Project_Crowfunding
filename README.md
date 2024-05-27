# ETL_Crowfunding_Project

# Introduction
ETL (Extract, Transform, and Load) is a fundamental process in data management, crucial for anyone working with data. In real-world scenarios, data is ubiquitous and often dispersed across multiple sources, frequently in an unorganized state. Mastering ETL processes enables you to have clean, up-to-date, and accurate data, empowering you to become proficient in your data. This proficiency allows you to manipulate data types, resolve formatting issues, and create additional columns to enrich the data, ultimately facilitating meaningful insights.

In this project, we will demonstrate the ETL process using specific datasets. The steps involve extracting data from various sources, transforming it to meet analytical needs, and loading it into a final database for storage and analysis.

# Sources of Data
Within the Resources Folder:

- contacts.xlsx
- crowdfunding.xlsx

# Database Type for Final Production Environment
Description: The project includes specifying the database type for the final production environment, which will store and manage the cleaned and processed data.

Database Type: Relational (SQL)

Data Cleaning and Processing
The data cleaning and processing tasks are performed using Jupyter Notebook, leveraging the following packages:

pandas for data manipulation and analysis.
numpy for numerical operations.
datetime for date and time operations.

Data Loading
Tool Used: pgAdmin

The cleaned data will be loaded into a relational database using pgAdmin for efficient storage and management. Additionally, an Entity Relationship Diagram (ERD) will be created using a tool such as Quick Database Diagrams to provide a visual representation of the database structure, enhancing our understanding of the relationships between different tables.

![ER Diagram](https://github.com/w7negreiros/ETL_Project_Crowfunding/assets/161100536/4e1a07cd-d892-4fd9-8624-d6dcdcba5bf2)

# Findings
Category Analysis:
- The "theater" category had the highest success rate.
- "Journalism" and "games" categories had relatively low success rates.
Subcategory Insights:
-The "plays" subcategory had the highest number of successful projects, with 187 out of 319 projects being successful, indicating a high success rate.
Pledged Amounts:
- The "theater" category had the highest total pledged amount, with $15,763,227.
- Other high-ranking categories included "film & video", "music", "publishing", and "technology", indicating substantial crowdfunding support.
- Categories such as "journalism" and "games" had lower pledged amounts, reflecting less support.
Geographical Distribution:
- The United States (US) had the highest sum of pledged amounts, totaling $31,409,336.
- Canada (CA) followed with $2,812,788, and the United Kingdom (GB) with $2,192,705, indicating significant crowdfunding activity in these countries.

# Conclusion
The data analysis reveals that "theater", "film & video", and "music" are the most successful categories in terms of crowdfunding projects, while "journalism" and "games" have relatively lower success rates. Similarly, subcategories like "plays", "photography books", "web", "food trucks", and "wearables" exhibit high success rates. In contrast, "audio", "science fiction", and "world music" have lower success rates. Geographically, the United States, Canada, and the United Kingdom show the highest total sums of pledged amounts, indicating robust crowdfunding support in these regions.

Overall, this ETL project demonstrates the importance of efficient data extraction, transformation, and loading processes in deriving actionable insights and understanding data trends across various categories and regions.

# Instructions
The instructions for this mini project are divided into the following subsections:

* Create the Category and Subcategory DataFrames
* Create the Campaign DataFrame
* Create the Contacts DataFrame
* Create the Crowdfunding Database

# Create the Category and Subcategory DataFrames
1. Extract and transform the "crowdfunding.xlsx" Excel data to create a category DataFrame that has the following columns:
 * A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
 * A "category" column that contains only the category titles
 * The following image shows this category DataFrame:

 <img src="https://static.bc-edx.com/data/dl-1-2/m13/lms/img/category_DataFrame.png" alt="category DataFrame" tabindex="0" role="button" aria-label="category DataFrame. Click to Enlarge.">

2. Export the category DataFrame as "category.csv" and save it to your GitHub repository.

3. Extract and transform the "crowdfunding.xlsx" Excel data to create a subcategory DataFrame that has the following columns:
 * A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
 * A "subcategory" column that contains only the subcategory titles
 * The following image shows this subcategory DataFrame:

 <img src="https://static.bc-edx.com/data/dl-1-2/m13/lms/img/subcategory_DataFrame.png" alt="subcategory DataFrame" tabindex="0" role="button" aria-label="subcategory DataFrame. Click to Enlarge.">

 4. Export the subcategory DataFrame as "subcategory.csv" and save it to your GitHub repository.


 # Create the Campaign DataFrame
 1. Extract and transform the "crowdfunding.xlsx" Excel data to create a campaign DataFrame has the following columns:
  * The "cf_id" column
  * The "contact_id" column
  * The "company_name" column
  * The "blurb" column, renamed to "description"
  * The "goal" column, converted to the float data type
  * The "pledged" column, converted to the float data type
  * The "outcome" column
  * The "backers_count" column
  * The "country" column
  * The "currency" column
  * The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the "datetime" format
  * The "deadline" column, renamed to "end_date" and with the UTC times converted to the "datetime" format
  * The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
  * The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
  * The following image shows this campaign DataFrame:

  <img src="https://static.bc-edx.com/data/dl-1-2/m13/lms/img/campaign_DataFrame.png" alt="campaign DataFrame" tabindex="0" role="button" aria-label="campaign DataFrame. Click to Enlarge.">

 2. Export the campaign DataFrame as "campaign.csv" and save it to your GitHub repository.

 # Create the Contacts DataFrame
 1. Choose one of the following two options for extracting and transforming the data from the "contacts.xlsx" Excel data:
  * Option 1: Use Python dictionary methods.
  * Option 2: Use regular expressions.

 2. If you chose Option 1, complete the following steps:
  * Import the "contacts.xlsx" file into a DataFrame.
  * Iterate through the DataFrame, converting each row to a dictionary.
  * Iterate through each dictionary, doing the following:
    * Extract the dictionary values from the keys by using a Python list comprehension.
    * Add the values for each row to a new list.
  * Create a new DataFrame that contains the extracted data.
  * Split each "name" column value into a first and last name, and place each in a new column.
  * Clean and export the DataFrame as "contacts.csv" and save it to your GitHub repository.
 
 3. If you chose Option 2, complete the following steps:
  * Import the "contacts.xlsx" file into a DataFrame.
  * Extract the "contact_id", "name", and "email" columns by using regular expressions.
  * Create a new DataFrame with the extracted data.
  * Convert the "contact_id" column to the integer type.
  * Split each "name" column value into a first and a last name, and place each in a new column.
  * Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

4. Check that your final DataFrame resembles the one in the following image:

<img src="https://static.bc-edx.com/data/dl-1-2/m13/lms/img/contact_DataFrame_final.png" alt="final contact DataFrame" tabindex="0" role="button" aria-label="final contact DataFrame. Click to Enlarge.">


# Create the Crowdfunding Database
1. Inspect the four CSV files, and then sketch an ERD of the tables by using "QuickDBD"

2. Use the information from the ERD to create a table schema for each CSV file.
    Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.

3. Save the database schema as a Postgres file named "crowdfunding_db_schema.sql", and save it to your GitHub repository.

4. Create a new Postgres database, named "crowdfunding_db".

5. Using the database schema, create the tables in the correct order to handle the foreign keys.

6. Verify the table creation by running a "SELECT" statement for each table.

7. Import each CSV file into its corresponding SQL table.

8. Verify that each table has the correct data by running a "SELECT" statement for each.

# Hints
* To split each "category & sub-category" column value into "category" and "subcategory" column values, use "df[["new_column1","new_column2"]] = df["column"].str.split()". Make sure to pass the correct parameters to the "split()" function.

* To get the unique category and subcategory values from the "category" and "subcategory" columns, create a NumPy array where the array length equals the number of unique categories and unique subcategories from each column. For information about how to do so, see "numpy.arange" in the NumPy documentation.

* To create the category and subcategory identification numbers, use a list comprehension to add the "cat" string or the "subcat" string to each number in the category or the subcategory array, respectively.

* For more information about creating a new Pandas DataFrame, see the "pandas.DataFrame" in the Pandas documentation.

* To convert the "goal" and "pledged" columns to the "float" data type, use the "astype()" method.

* To convert the "launch_date" and "end_date" UTC times to the "datetime" format, see the "Transform_Grocery_Orders_Solved.ipynb" activity solution.

* For more information about how to add the "category_id" and "subcategory_id" unique identification numbers to the campaign DataFrame, see the "     pandas.DataFrame.merge" in the Pandas documentation.
