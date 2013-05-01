-- Person Data
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'SYSTEM', 'SYSTEM', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party (PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @PersonId = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'TEST', 'TEST', 'no-reply@ucdavis.edu');


INSERT INTO Core.Party (PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @PersonId = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Rachel', 'Aurand', 'reaurand@ucdavis.edu');

-- Campus
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @CampusId = @Id;
INSERT INTO Core.Organization(Id, Code, Name) VALUES (@Id, '03','University of California, Davis');
INSERT INTO Core.Campus(Id) VALUES (@Id);

-- College Data
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '01', 'College of Agricultural and Environmental Sciences', @CampusId);
INSERT INTO Core.College(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @CollegeId = @Id;
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '22', 'College of Biological Sciences', @CampusId);
INSERT INTO Core.College(Id) VALUES (@Id);

-- Department Data
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '061827', 'Biotechnology Program', @CollegeId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '061805', 'Bodega Marine Laboratory', @CollegeId);
INSERT INTO Core.Department(Id) VALUES (@Id);

-- Building
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingId = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '01', 'ARS Building', @CampusId);
INSERT INTO Core.Building(Id) VALUES (@Id);

-- Floor
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @FloorId = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '01', 'First Floor', @BuildingId);
INSERT INTO Core.Floor(Id) VALUES (@Id);

-- Room
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '100', 'Room 100', @FloorId);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '101', 'Room 101', @FloorId);
INSERT INTO Core.Room(Id) VALUES (@Id);
