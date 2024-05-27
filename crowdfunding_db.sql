CREATE TABLE contacts (
    contact_id INTEGER  NOT NULL ,
    first_name VARCHAR(50)  NOT NULL ,
    last_name VARCHAR(50)  NOT NULL ,
    email VARCHAR(50)  NOT NULL,
	CONSTRAINT "primary_contacts" PRIMARY KEY ("contact_id")
);

CREATE TABLE category (
    category_id VARCHAR(50)  NOT NULL ,
    category VARCHAR(50)  NOT NULL ,
	CONSTRAINT "primary_category" PRIMARY KEY ("category_id")
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(50)  NOT NULL ,
    subcategory VARCHAR(50)  NOT NULL ,
    CONSTRAINT "primary_subcategory" PRIMARY KEY ("subcategory_id")
);

CREATE TABLE campaign (
    cf_id INTEGER  NOT NULL ,
    contact_id INTEGER  NOT NULL ,
    company_name VARCHAR(50)  NOT NULL ,
    description TEXT  NOT NULL ,
    goal FLOAT  NOT NULL ,
    pledged FLOAT  NOT NULL ,
    outcome VARCHAR(50)  NOT NULL ,
    backers_count INTEGER  NOT NULL ,
    country VARCHAR(50)  NOT NULL ,
    currency VARCHAR(50)  NOT NULL ,
    launched_date DATE  NOT NULL ,
    end_date DATE  NOT NULL ,
    category_id VARCHAR(50)  NOT NULL ,
    subcategory_id VARCHAR(50)  NOT NULL ,
	CONSTRAINT "primary_campaign" PRIMARY KEY ("cf_id")	
);