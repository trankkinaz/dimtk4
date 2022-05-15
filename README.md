## About This Repo
**Team Assigment 4**

**BOL - DIM (Data and Information Management)**

**Class: DLBA Team-3**

***LINK-C: TATA KELOLA KINERJA TEKNOLOGI INFORMASI MENGGUNAKAN IT BALANCED SCORECARD***

### Current Codebase Problem:
- Obsolate PHP version (PHP 5)
- Obsolate DBcall method (mysqli)
- Unstructured Codebase, no separation of concern those difficult to refactor
- Underutilize Database feature usage

### Improvement Proposed:
- Upgrade PHP to version 7.4
- Use Laravel 8 Framework to follow OOP principles and MVC pattern
- Utilize Database feature e.g views

### How its works:
***Assumed all system prerequisite is met (e.g: wamp/xampp/laragon,php,composer)***
- Clone or download this repo
- Extract or paste to your web server directory (e.g www folder in xampp/wamp/laragon)
- create empty database in mysql server, set database name: dimtk4
- using database manager (heidisql, mysql workbench) restore from dump file [here](https://github.com/trankkinaz/dimtk4/blob/main/db-dimtk4-202205151041.sql) 
- open terminal/command prompt and navigate extracted folder
- >run command: `php artisan serve`
- follow url to open web apps
- in homepage login as `admin` and  password= `test`

### Screenshot
1. Admin dashboard
![Admin dashboard](/screenshot/1_admin_page.png "Admin dashboard")
2. Manajemen User
![User list](/screenshot/2_admin_user.png "User list")
3. User -> Add New User
![Add new user](/screenshot/2_admin_user_add.png "Add new user")
4. User -> Edit User
![Edit User](/screenshot/2_admin_user_edit.png "Edit User")
5. Manajemen Dimensi
![Dimensi List](/screenshot/3_admin_dimensi.png "Dimensi List")
6. Dimensi -> Add New dimensi
![ Add New dimensi](/screenshot/3_admin_dimensi_add.png "Add New dimensi")
7. Dimensi -> Edit Dimensi
![Edit Dimensi](/screenshot/3_admin_dimensi_edit.png "Edit Dimensi")
8. Manajemen Kuesioner
![Kuesioner List](/screenshot/4_admin_kuesioner.png "Kuesioner List")
9. Kuesioner -> Add Pertanyaan 
![Add Pertanyaan ](/screenshot/4_admin_kuesioner_add.png "Add Pertanyaan ")
10. Kuesioner -> Edit Pertanyaan
![Edit Pertanyaan](/screenshot/4_admin_kuesioner_edit.png "Edit Pertanyaan")
11. User (Non Admin) Dashboard
![User dashboard](/screenshot/5_user_home.png "User dashboard")
12. Angket Scorecard -> Create/Edit Angket 
![Isi Kuesioner](/screenshot/5_user_isi.png "Isi Kuesioner")
13. Angket Scorecard -> Hasil kuesioner *view kuesioner result summary*
![Kuesioner result](/screenshot/5_user_result.png "Kuesioner result")
14. Loged User Profile
![User Profile](/screenshot/9_1_userProfile.png "User Profile")
15. User Change passowrd 
![Change Password](/screenshot/9_2_userChgPass.png "Change Password")