Joohan Lee, HW1_README
===============================================================================================
*[Additional information about the entities and relationships]
<Student>
    1. 'STUDENT' entity stores students' id, name, email, phone, address, fee that they have to pay, table id that they are assigned, the number of books that they borrowed.
    2. Students can take one or more classes and one or more projects.
    3. When students 'sign up for' coding classes and projects, 'sign up for' (many to many) relationship can exist between 'STUDENT' and 'CLASS' or 'STUDENT' and'PROJECT'.
    4. When it is cofirmed for students to take classes or projects, 'takes' relationship is made between 'STUDENT' and 'CLASS' or 'STUDENT' and 'PROJECT',
    and I assumed that they get grade and rate class or project at the end of the curriculum. 
    Moreover, 'TAKE_CLASS' and 'TAKE_PROJECT' stores which date they take place in by operating_week property.
    5. Students should pay their fee at the beginning for the entire curriculum, so the value of the property 'fee' will be same with a single flat fee at the beginning.

<CLASS>
    1. 'CLASS' entity stores class id, name of class, programming language using in class, the maximum number of students who can take class, room number where classes take, start & end time of classes,
       the day of the week when classes are scheduled.
    2. Assumed that same class can be taught by multiple instructors.
    3. Coding classes teach coding with computer programming language(e.g. Python, etc).
    4. Textbooks are used in each class. A instructor who teaches a class decides which textbook will be used. 
       There could be some textbooks which are not being currently used for classes, but had used before or will be used again in the future.
       One textbook can be used for more than one class.
    
<Instructor>
    1. 'INSTRUCTOR' entity stores instructor's id, name, department, email, phone number, hours of teaching classes, hours of supervising projects.
    2. We store only hours of teaching and supervising in Instructor entity, not rate of them, since all instructors are paid identical rates.
      The reason why I seperated teaching and supervising is because the supervision pays a higher rate.
    3. They are rated by students at the end of the curriculum. Its score is stored in the property 'rating_score' of the entity 'RATE_INSTRUCTOR'.
    4. 'INSTRUCTOR' teaches one or more 'CLASS' and supervises one or more 'PROJECT'.
    5. As metioned above, they can specify a textbook for one or more classes.

<PROJECT>
    1. Project stores project's id, name, microcontroller using in project, scheduled start & end time of project, the day of the week scheduled, room number where projects take.
    2. Each project uses a microcontroller(e.g. Arduino, etc)
    3. 'PART' is used in 'PROJECT'. If parts would be damaged, 'part_price' (the property of 'PART') will be charged to students' fee who took the projects at the end of the term, 
        and the property 'part_status' would be set to kind of damaged. Otherwise, students can return parts, and those parts will not be currently used in any projects before being used in other projects.
    4. Project has to use at least one part.

<PART>
    1. All parts can be used in projects.
    2. All parts can be contained in the box of tables.
    3. Same part can be contained in more than one table, and one table can contain more than one part.

<TABLE>
    1. Each table is assigned to one project.
    2. Each table can have at most 5 students.

<SUPPLIER>
    1. 'SUPPLIER' stores supplier's id, name, contact information, website url(because they are online suppliers).
    2. 'PART' is ordered from 'SUPPLIER'.
    3. One part can be ordered from more than one supplier, and one supplier can supply various parts.

<TAKE_PROJECT>
    1. This represents who is taking which projects.
    2. "rating_score" attribute stores score of each project(one to five stars) that are rated by students.
    3. Students take projects(or classes), and projects(or classes) can be found in 'TAKE_PROJECT'(or 'TAKE_CLASS') table.

<BOOK>
    1. 'BOOK' entity stores book's id, name, location, author, boolean if it is currently borrowed or not.
    2. When 'STUDENT' borrow 'BOOK', the property of 'check_out_date' and 'return_date' of entity 'BORROW' will be decided.
       Also, 'return_date' should be 2 weeks later than 'check_out_date', and if students did not return within return_date, it will be overdue.
    3. The propery of 'num_of_borrowed_books' of entity 'STUDENT' can be at most 4.(which means there can be at most 4 rows with same student_id in BORROW table)

===============================================================================================
* [Other assumptions]
    1. There is no section for one class.
    2. I made relationships "signs up" for students who signed up classes or projects, but not enrolled yet.
        (If they are enrolled, they will be stored in "TAKE_PROJECT" table.)
    3. There is one book for each book_id in the library.
    4. There are just several rooms, so I did not make 'ROOM' table but included 'room_number' attribute to each class and project table.
    5. When students are provided a schedule that lists where and when classes or projects take, we can use 'class_start_time', 'class_end_time', 
      , 'proj_start_time', 'proj_end_time', 'room_number' attributes.
    6. Assume that all students have to take at least one class and one project.
    7. Tables can be assigned to only projects first, before being assigned to students. 
       However, since all students have to take one or more projects, they must sit at least one table and can sit multiple tables according to projects.
    8. I added some of bridge entities only when they are needed to explain more easily.