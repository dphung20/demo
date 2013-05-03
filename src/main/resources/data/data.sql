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
SET @BuildingId = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '4556', 'Myer Hall', @CampusId);
INSERT INTO Core.Building(Id) VALUES (@Id);

-- Floor
--INSERT INTO Core.Party(PartyType) VALUES (null);
--SET @Id = IDENTITY();
--SET @Floor0Id = @Id
--INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '0', 'Basement', @BuildingId);
--INSERT INTO Core.Floor(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @Floor1Id = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1', '1st Floor', @BuildingId);
INSERT INTO Core.Floor(Id) VALUES (@Id);

--INSERT INTO Core.Party(PartyType) VALUES (null);
--SET @Id = IDENTITY();
--SET @Floor2Id = @Id
--INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '2', '2nd Floor', @BuildingId);
--INSERT INTO Core.Floor(Id) VALUES (@Id);
--
--INSERT INTO Core.Party(PartyType) VALUES (null);
--SET @Id = IDENTITY();
--SET @Floor3Id = @Id
--INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '3', '3rd Floor', @BuildingId);
--INSERT INTO Core.Floor(Id) VALUES (@Id);
--
--INSERT INTO Core.Party(PartyType) VALUES (null);
--SET @Id = IDENTITY();
--SET @Floor4Id = @Id
--INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '4', '4th Floor', @BuildingId);
--INSERT INTO Core.Floor(Id) VALUES (@Id);

-- Room
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @Room1 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1402', '1402', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @Room2 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1410', '1410', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @Room3 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1309', '1309', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @Room4 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1311', '1311', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @Room5 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1315', '1315', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @Room6 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1423', '1423', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @Room7 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1411', '1411', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @Room8 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1301', '1301', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @Room9 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1409', '1409', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
SET @Room10 = @Id
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1417', '1417', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1419', '1419', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1312', '1312', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1303', '1303', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1402A', '1402A', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1415A', '1415A', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1417A', '1417A', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1330', '1330', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1335', '1335', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1338', '1338', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1339', '1339', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1403', '1403', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1405', '1405', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1420', '1420', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1429A', '1429A', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1305', '1305', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1302', '1302', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1323', '1323', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1329', '1329', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1232', '1232', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1327', '1327', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1202A', '1202A', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1408', '1408', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1333', '1333', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1406', '1406', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1202', '1202', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1334', '1334', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1325', '1325', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1326', '1326', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1328', '1328', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1331', '1331', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Organization(Id, Code, Name, ParentFacility) VALUES (@Id, '1332', '1332', @Floor1Id);
INSERT INTO Core.Room(Id) VALUES (@Id);



-- Person Data
INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Loren', 'Helgren', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentAPB, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@Room1, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@Room2, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@Room3, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Inga', 'Cohn', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentAPB, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@Room4, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@Room5, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@Room6, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Ingeborg', 'Sebastian', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentARE, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@Room7, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@Room6, @Id)

INSERT INTO Core.Party(PartyType) VALUES (null);
SET @Id = IDENTITY();
INSERT INTO Core.Person(Id, FirstName, LastName, Email) VALUES (@Id, 'Noah', 'Crain', 'no-reply@ucdavis.edu');
INSERT INTO Core.DepartmentToPerson(Department, Person) VALUES(@DepartmentARE, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@Room9, @Id)
INSERT INTO Core.RoomToPerson(Room, Person) VALUES(@Room10, @Id)

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
