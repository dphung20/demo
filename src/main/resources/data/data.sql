-- Campus
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @CampusId = @Id;
INSERT INTO Core.Organization(Id, Code, Name) VALUES (@Id, '03','University of California, Davis');
INSERT INTO Core.Campus(Id) VALUES (@Id);

-- College Data
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @CollegeAgId = @Id;
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '01', 'College of Agricultural and Environmental Sciences', @CampusId);
INSERT INTO Core.College(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @CollegeBioId = @Id;
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '22', 'College of Biological Sciences', @CampusId);
INSERT INTO Core.College(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @CollegeEngId = @Id;
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '08', 'College of Engineering', @CampusId);
INSERT INTO Core.College(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @CollegeLsId = @Id;
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '15', 'College of Letters and Science', @CampusId);
INSERT INTO Core.College(Id) VALUES (@Id);

-- Department Data
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @DepartmentAPB = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Agricultural Plant Biology', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @DepartmentARE = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Agricultural and Resource Economics', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @DepartmentAS = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '030045', 'Animal Science', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Biological and Agricultural Engineering', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Crop and Ecosystem Sciences', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Entomology', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Environmental Design', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Environmental Sciences Departments', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Environmental Science and Policy', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Environmental Toxicology', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Food Science and Technology', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Horticultural Sciences', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Human and Community Development', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Human Sciences Departments', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Land, Air and Water Resources', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Landscape Architecture', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Nematology', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Nutrition', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Plant Pathology', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Plant Sciences', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Textiles and Clothing', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Viticulture and Enology', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentOrganization) VALUES (@Id, '', 'Wildlife, Fish and Conservation Biology', @CollegeAgId);
INSERT INTO Core.Department(Id) VALUES (@Id);




-- Building
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingAId = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '4556', 'Myer Hall', @CampusId);
INSERT INTO Core.Building(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBId = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '3961', 'Chemistry', @CampusId);
INSERT INTO Core.Building(Id) VALUES (@Id);

-- Floor
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingAFloor1Id = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1', '1st Floor', @BuildingAId);
INSERT INTO Core.Floor(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingAFloor2Id = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2', '2nd Floor', @BuildingAId);
INSERT INTO Core.Floor(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBFloor1Id = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1', '1st Floor', @BuildingBId);
INSERT INTO Core.Floor(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBFloor2Id = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2', '2nd Floor', @BuildingBId);
INSERT INTO Core.Floor(Id) VALUES (@Id);


-- Room
-- building A 1nd floor
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingARoom1 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1402', '1402', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingARoom2 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1410', '1410', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingARoom3 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1309', '1309', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingARoom4 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1311', '1311', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingARoom5 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1315', '1315', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingARoom6 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1423', '1423', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingARoom7 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1411', '1411', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingARoom8 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1301', '1301', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingARoom9 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1409', '1409', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingARoom10 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1417', '1417', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1419', '1419', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1312', '1312', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1303', '1303', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1402A', '1402A', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1415A', '1415A', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1417A', '1417A', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1330', '1330', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1335', '1335', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1338', '1338', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1339', '1339', @BuildingAFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

-- building A 2nd floor
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2109', '2109', @BuildingAFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2125', '2125', @BuildingAFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2213', '2213', @BuildingAFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2251', '2251', @BuildingAFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2301', '2301', @BuildingAFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2302', '2302', @BuildingAFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2303', '2303', @BuildingAFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2306', '2306', @BuildingAFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2307', '2307', @BuildingAFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2308', '2308', @BuildingAFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

-- building b 1st floor
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBRoom1 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '101', '101', @BuildingBFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBRoom2 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '103', '103', @BuildingBFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBRoom3 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '107', '107', @BuildingBFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBRoom4 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '111', '111', @BuildingBFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBRoom5 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '117', '117', @BuildingBFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBRoom6 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '123', '123', @BuildingBFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBRoom7 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '123', '123', @BuildingBFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBRoom8 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '130', '130', @BuildingBFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBRoom9 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '131', '131', @BuildingBFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @BuildingBRoom10 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '133', '133', @BuildingBFloor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

-- building b 2nd floor
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '203', '203', @BuildingBFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '207', '207', @BuildingBFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '211', '211', @BuildingBFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '212', '212', @BuildingBFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '213', '213', @BuildingBFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '217', '217', @BuildingBFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '227', '227', @BuildingBFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '229', '229', @BuildingBFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '231', '231', @BuildingBFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '233', '233', @BuildingBFloor2Id);
INSERT INTO Core.Room(Id) VALUES (@Id);


-- Person Data
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Loren', 'Helgren', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentAPB, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingARoom1, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingARoom2, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingARoom3, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingBRoom1, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Inga', 'Cohn', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentAPB, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingARoom4, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingARoom5, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingARoom6, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingBRoom2, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Ingeborg', 'Sebastian', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentARE, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingARoom7, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingARoom6, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Noah', 'Crain', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentARE, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingARoom9, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@BuildingARoom10, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Mayra', 'Wawrzyniak', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentARE, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Rickey', 'Peebles', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentAS, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Jutta', 'Carini', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentAS, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Malisa', 'Allbright', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentAS, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Beula', 'Dills', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentAS, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Mandie', 'Stoney', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentAS, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Garnet', 'Orlando', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Beth', 'Grundy', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Louella', 'Amin', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Estella', 'Harling', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Sunni', 'Mowen', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Emeline', 'Seyfried', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Elaine', 'Maynor', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Michal', 'Fischbach', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Valerie', 'Santiago', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Dixie', 'Harty', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Ronda', 'Sanmiguel', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Karoline', 'Twiford', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Bari', 'Grimaldi', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Antone', 'Kesselman', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Rhonda', 'Craig', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Chester', 'Laroche', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Meggan', 'Pangborn', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Delma', 'Bolan', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Cyndi', 'Cheng', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Byron', 'Arn', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Kiersten', 'Danos', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Humberto', 'Solum', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Celena', 'Creasman', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Lisandra', 'Phillippi', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Camilla', 'Ceron', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Shu', 'Huntington', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Doretha', 'Keiser', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Jacquelin', 'Ansari', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Rhiannon', 'Kelch', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Venita', 'Arehart', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Evie', 'Anaya', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Elizabeth', 'Raynor', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Tandy', 'Brookover', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Shin', 'Horsey', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Man', 'Whicker', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Valentin', 'Bahe', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Ester', 'Brault', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Elenore', 'Ketterer', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Billy', 'Peri', 'no-reply@ucdavis.edu');

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Brooks', 'Rini', 'no-reply@ucdavis.edu');
