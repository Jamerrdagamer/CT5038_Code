/***************************************************************************************************************************
Creating a Data base for Charlton Kings

Tables that will be in this sql will be

    login
    trees
    tree_Adoptions
    observations
    photos
    areas
    animals

** 1.00 JH Initial Creation 
***************************************************************************************************************************/


-- Login table
create or alter table login
(
    loginID int auto_increment
        primary key,
    username varchar(50) not null,
    password varchar(50) not null
);


-- trees
create or alter table trees
(
    treeID int auto_increment
        primary key,
    species varchar(50) not null,
    location varchar(100) not null,
    plantedDate date,
    healthStatus varchar(50)
);

-- tree_Adoptions
create or alter table tree_Adoptions
(
    adoptionID int auto_increment
        primary key,
    treeID int not null,
    adopterName varchar(100) not null,
    adoptionDate date,
    foreign key (treeID) references trees (treeID)
);

-- observations
create or alter table observations
(
    observationID int auto_increment
        primary key,
    treeID int not null,
    observerName varchar(100) not null,
    observationDate date,
    notes text,
    foreign key (treeID) references trees (treeID)
);

-- photos
create or alter table photos
(
    photoID int auto_increment
        primary key,
    treeID int not null,
    photoURL varchar(255) not null,
    uploadDate date,
    foreign key (treeID) references trees (treeID)
);

-- areas
create or alter table areas
(
    areaID int auto_increment
        primary key,
    areaName varchar(100) not null,
    description text
);

-- animals
create or alter table animals
(
    animalID int auto_increment
        primary key,
    species varchar(50) not null,
    habitat varchar(100),
    observationDate date
);