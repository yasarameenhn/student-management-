
# Plan student management system

> hey my name is yasar i wana create a student management system  frontend: add upadte delete student rocords  backend :manage student database for backend i wana use python  with 10 seeded data for database use sqlite with sqlachemy  or postgre sql suggestions are welcome here for front end use react . create a folder called docs  in that store phase by phase implementaions of the project aslo create required documets like (architecture diagram , use case diagaram , sequense diagaram ,class diagram) for cretaion of diagrams use mermaid dont create code until i say . if you have any doubts lets clarify pls ask questions ???

<details><summary>1 previous message</summary>

> Nice to meet you, Yasar. I’ll stay in planning mode for now and only create documentation/planning artifacts if you explicitly want that before code; no application code until you say the word.
</details>

Absolutely, Yasar. Before I create anything, a few quick clarifications so we shape this cleanly:

1. Should I create the `docs/` folder and planning documents now, while still avoiding app code?

2. For the backend database, my suggestion is:
   - `SQLite + SQLAlchemy` for the first version because it is simple, local, and perfect for learning/demo projects.
   - PostgreSQL later if you want deployment, multiple users, or production-style setup.

   Are you okay starting with `SQLite + SQLAlchemy`?

3. For Python backend, do you prefer:
   - `FastAPI` recommended: modern, clean API docs, great with React
   - `Flask`: simpler, older, very common

4. Student fields: should we use something like this?
   - `id`
   - `first_name`
   - `last_name`
   - `email`
   - `phone`
   - `date_of_birth`
   - `gender`
   - `course`
   - `enrollment_date`
   - `status`

5. For frontend styling, do you want plain CSS, Tailwind CSS, Bootstrap, or Material UI?

6. Should the project include authentication/login, or keep it simple with only add/update/delete/view students?

My recommended stack:

```text
Frontend: React + Vite
Backend: Python FastAPI
Database: SQLite
ORM: SQLAlchemy
Docs: Mermaid diagrams inside docs/
```

Once you confirm these, I can first create only the documentation structure and phase-by-phase implementation plan, without writing backend/frontend code.

> 1: yes
> 2 : SQLite + SQLAlchemy
> 3:FastApi
> 4: yup include all
> 5 :plain css
> 6: Only CRUD are enough no need of login page and authentication
>
> NOTE : DONT GENERATE THE CODE IMMEDIATELY UNTIL I SAY . CREATE DOCUMENT ONE BY ONE NOT ALL AT ONCE
>
> DID YOU  UNDERSTAND ?? ASK QUESTIONS TO BE ON SAME PAGE

Yes, I understood, Yasar.

We will use:

```text
Frontend: React + plain CSS
Backend: FastAPI
Database: SQLite
ORM: SQLAlchemy
Features: Student CRUD only
Seed Data: 10 student records
Auth/Login: Not included
Docs: Created one by one inside docs/
Diagrams: Mermaid
Code: Not generated until you explicitly say
```

I will not create all documents at once. We’ll do them one by one.

My only question before starting:

Which document should I create first?

Recommended order:

1. `phase-implementation-plan.md`
2. `architecture-diagram.md`
3. `use-case-diagram.md`
4. `sequence-diagram.md`
5. `class-diagram.md`
6. `api-design.md`
7. `database-design.md`

I suggest we start with `phase-implementation-plan.md`, because it will guide the whole project step by step.

> ok go ahead

<details><summary>2 previous messages</summary>

> Great, I’ll create only the first document now: `docs/phase-implementation-plan.md`. It will define the project phases without adding any application code.
>
> <details><summary>Created a file</summary>
>
> - Wrote `./docs/phase-implementation-plan.md` (+258 -0)
>
> </details>
</details>

Yes, understood and done.

I created only the first document:

[docs/phase-implementation-plan.md](D:/training%20ja/docs/phase-implementation-plan.md)

No frontend or backend code was generated. The document covers the agreed stack, student fields, CRUD scope, and phase-by-phase project plan.

Next recommended document: `architecture-diagram.md` with a Mermaid architecture diagram.

> lets create backend first then front end creat back end document  phase by phase implmentation

<details><summary>2 previous messages</summary>

> Got it, Yasar. I’ll create a backend-only phase implementation document now, still documentation only and no backend code.
>
> <details><summary>Created a file</summary>
>
> - Wrote `./docs/backend-phase-implementation.md` (+291 -0)
>
> </details>
</details>

Done, Yasar.

I created the backend-only phase document here:

[docs/backend-phase-implementation.md](D:/training%20ja/docs/backend-phase-implementation.md)

No code was generated. This document breaks the backend into phases: setup, database config, SQLAlchemy model, Pydantic schemas, CRUD logic, routes, seed data, CORS, testing, and run instructions.

Next, we can create the backend architecture/API document, or when you are ready, you can say to start generating backend code phase by phase.

> creat diagrams docs

<details><summary>2 previous messages</summary>

> I’ll keep the “one by one” rule, Yasar. I’m going to create the first diagram document now: the backend architecture diagram using Mermaid, with no application code.
>
> <details><summary>Created a file</summary>
>
> - Wrote `./docs/backend-architecture-diagram.md` (+117 -0)
>
> </details>
</details>

Created the first diagram document:

[docs/backend-architecture-diagram.md](D:/training%20ja/docs/backend-architecture-diagram.md)

It includes:
- Backend architecture Mermaid diagram
- Backend request flow sequence diagram
- Component responsibilities
- Backend-only boundary note

I kept your rule: one document at a time, no code generated. Next diagram doc can be `backend-use-case-diagram.md`.

> lets go with next diagram

<details><summary>2 previous messages</summary>

> Next up I’ll add the backend use case diagram document. It will focus on what backend actions the frontend/user can trigger, still docs only.
>
> <details><summary>Created a file</summary>
>
> - Wrote `./docs/backend-use-case-diagram.md` (+105 -0)
>
> </details>
</details>

Created the next diagram document:

[docs/backend-use-case-diagram.md](D:/training%20ja/docs/backend-use-case-diagram.md)

It includes:
- Mermaid use case diagram
- Backend actors
- CRUD use cases
- Validation behavior
- Out-of-scope features

No code generated. Next recommended diagram: `backend-sequence-diagram.md`.

> create 2 docs at a time now

<details><summary>2 previous messages</summary>

> Perfect, we’ll move a little faster now: two docs at a time, still documentation only. I’ll create the backend sequence diagram and backend class diagram next.
>
> <details><summary>Created 2 files</summary>
>
> - Wrote `./docs/backend-class-diagram.md` (+152 -0)
> - Wrote `./docs/backend-sequence-diagram.md` (+157 -0)
>
> </details>
</details>

Done, Yasar. Created 2 docs at once:

[docs/backend-sequence-diagram.md](D:/training%20ja/docs/backend-sequence-diagram.md)
[docs/backend-class-diagram.md](D:/training%20ja/docs/backend-class-diagram.md)

They include Mermaid diagrams for:
- CRUD request flows
- Error handling flow
- Backend model/schema/class structure

No code generated. Next useful pair would be `backend-database-design.md` and `backend-api-design.md`.

> lets crate remaning docs

<details><summary>2 previous messages</summary>

> I’ll finish the remaining backend planning docs now: database design and API design. These are still documentation artifacts only, so we’re not crossing into implementation code yet.
>
> <details><summary>Created 2 files</summary>
>
> - Wrote `./docs/backend-api-design.md` (+322 -0)
> - Wrote `./docs/backend-database-design.md` (+147 -0)
>
> </details>
</details>

Done, Yasar. I created the remaining backend docs:

[docs/backend-database-design.md](D:/training%20ja/docs/backend-database-design.md)
[docs/backend-api-design.md](D:/training%20ja/docs/backend-api-design.md)

Now the backend documentation set includes:
- Phase implementation plan
- Architecture diagram
- Use case diagram
- Sequence diagram
- Class diagram
- Database design
- API design

Still no application code generated. When you’re ready, we can either review the docs or start backend implementation phase by phase.

> lets build backend phase to phase implementation  one at a time
> i want my file structure to be
> >.env file
> >.env_example
> >gitignore
> >make use of MIT Licence
> >mian.py  (This should be root )
> >Readme.md
> >requirement.txt
> >requirement.prod.txt
>
> if you have any doubt pls ask ??

<details><summary>4 previous messages</summary>

> I’ll start carefully with Phase 1 only: backend project setup files at the project root, following your requested flat structure. One quick thing I’ll verify in the workspace first so I don’t step on anything already there.
>
> The workspace only has the `docs/` folder plus repo metadata, so Phase 1 can land cleanly. I’m going to create the root backend setup files now; I’ll use `main.py` at the root, treating `mian.py` as a typo because FastAPI/Uvicorn conventions expect `main.py`.
>
> <details><summary>Created 8 files</summary>
>
> - Wrote `./.env` (+6 -0)
> - Wrote `./.env_example` (+6 -0)
> - Wrote `./.gitignore` (+37 -0)
> - Wrote `./LICENSE` (+22 -0)
> - Wrote `./README.md` (+65 -0)
> - Wrote `./main.py` (+16 -0)
> - Wrote `./requirement.prod.txt` (+6 -0)
> - Wrote `./requirement.txt` (+6 -0)
>
> </details>
>
> Phase 1 files are in place. I’m doing a quick sanity check now: make sure the app entry file parses and confirm exactly what changed.
</details>

Yes, Yasar. Phase 1 backend setup is done.

Created root-level files:

- `.env`
- `.env_example`
- `.gitignore`
- `LICENSE` with MIT License
- `README.md`
- `main.py`
- `requirement.txt`
- `requirement.prod.txt`

I used `main.py` at the root because `mian.py` looked like a typo and `uvicorn main:app --reload` expects `main.py`.

Verification:
- `python -m py_compile main.py` passed.
- `git status` could not run because this folder is not being detected as a valid Git repository, even though a `.git` folder exists.

Phase 1 is complete. Next phase should be database configuration with SQLite + SQLAlchemy.

> D:\training ja> python -m venv env
> Traceback (most recent call last):
>   File "<frozen runpy>", line 198, in _run_module_as_main
>   File "<frozen runpy>", line 88, in _run_code
>   File "C:\Python312\Lib\venv\__main__.py", line 6, in <module>
>     main()
>   File "C:\Python312\Lib\venv\__init__.py", line 598, in main
>     builder.create(d)
>   File "C:\Python312\Lib\venv\__init__.py", line 77, in create
>     self._setup_pip(context)
>   File "C:\Python312\Lib\venv\__init__.py", line 387, in _setup_pip
>     self._call_new_python(context, '-m', 'ensurepip', '--upgrade',
>   File "C:\Python312\Lib\venv\__init__.py", line 383, in _call_new_python
>     subprocess.check_output(args, **kwargs)
>   File "C:\Python312\Lib\subprocess.py", line 466, in check_output
>     return run(*popenargs, stdout=PIPE, timeout=timeout, check=True,
>            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "C:\Python312\Lib\subprocess.py", line 550, in run
>     stdout, stderr = process.communicate(input, timeout=timeout)
>                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "C:\Python312\Lib\subprocess.py", line 1196, in communicate
>     stdout = self.stdout.read()
>              ^^^^^^^^^^^^^^^^^^
>
> Rectify this issue

<details><summary>8 previous messages</summary>

> That traceback means the virtual environment creation reached the `ensurepip` step and then failed while trying to bootstrap pip inside the new env. I’ll inspect the Python install and the half-created `env` folder first, then fix it cleanly.
>
> The failed run did leave a partial `env` directory behind. The version checks are hanging too, which points at Python itself or its bundled pip step being stuck rather than a project-file problem.
>
> Good, the base Python is healthy: Python 3.12.10 and `ensurepip` exists. I’ll check whether the partially-created environment has a working interpreter/pip, then recreate it only if needed.
>
> The env interpreter and `python -m pip` work, but `env\\Scripts` is missing the usual helper files like `activate` and `pip.exe`. I’m going to try a non-destructive repair first with `python -m venv --upgrade env`.
>
> The repair command completed, so I’m checking whether the activation and pip launcher files are now present.
>
> It repaired the interpreter but still didn’t generate the launcher/activation scripts. Since `python -m pip` works inside the env, I’ll ask pip to regenerate its command scripts from inside the environment.
>
> Pip itself is installed, but the environment is structurally incomplete. The clean fix is to remove the partial `env` folder and recreate it from scratch, then verify activation and dependency installation.
>
> The clean recreate is running. I’m waiting for it to finish because this is exactly where the original command failed.
</details>

It’s still hanging at the venv creation step, which matches your traceback. I’ll give it a little more time, then I’ll use the reliable workaround: create the env without pip and install/repair pip manually.

> now create .env

<details><summary>3 previous messages</summary>

> I’ll focus on the `.env` request now. First I’m checking the current `.env` content and whether that interrupted venv command is still alive, so the workspace doesn’t stay in a weird half-state.
>
> `.env` is currently missing, so I’ll recreate it with the backend settings we planned: app name, environment, SQLite database URL, debug flag, and frontend origin.
>
> <details><summary>Created a file</summary>
>
> - Wrote `./.env` (+6 -0)
>
> </details>
</details>

Created `.env` again at the project root.

Current content:

```env
APP_NAME=Student Management System API
APP_ENV=development
DEBUG=true
DATABASE_URL=sqlite:///./students.db
FRONTEND_ORIGIN=http://localhost:5173
```

Verified it exists and reads correctly.

> lets go ahead wit hphase 2

<details><summary>6 previous messages</summary>

> Phase 2 is database configuration. I’ll keep the structure flat at the root, so I’m going to add a reusable SQLAlchemy setup file and lightly wire `main.py` to create tables on startup, without adding the student model/CRUD routes yet.
>
> I’ve confirmed the app is still just the Phase 1 health check. I’m adding the database foundation now: environment loading, database URL handling, engine/session/base setup, and a small startup hook.
>
> One thing I noticed: `.env_example` is currently missing, likely from the interrupted environment cleanup. Since it is part of your requested root structure, I’ll restore it while doing this phase.
>
> <details><summary>Created 2 files, edited a file</summary>
>
> - Wrote `./.env_example` (+6 -0)
> - Wrote `./database.py` (+34 -0)
> - Wrote `./main.py` (+7 -1)
>
> </details>
>
> Phase 2 code is in place. I’m going to run a syntax check and import the app/database modules to make sure the configuration loads without starting a server.
>
> The compile check passed. The import command is taking longer than expected, likely because the earlier virtual environment issue left Python startup a bit slow here, so I’m waiting for the actual result rather than guessing.
</details>

Phase 2 is complete.

Added:

[database.py](d:/training%20ja/database.py)
- Loads `.env`
- Reads `DATABASE_URL`
- Creates SQLAlchemy engine
- Creates `SessionLocal`
- Defines shared `Base`
- Adds `get_db()` dependency
- Adds `create_database_tables()`

Updated:

[main.py](d:/training%20ja/main.py)
- Imports `create_database_tables`
- Runs table creation during FastAPI startup

Also restored:

[.env_example](d:/training%20ja/.env_example)

Verification passed:
- `python -m py_compile main.py database.py`
- Import test confirmed `DATABASE_URL` is `sqlite:///./students.db`

Next phase: SQLAlchemy Student model.

> lets go ahead with phase 3 and 4

<details><summary>8 previous messages</summary>

> Great, I’ll handle Phase 3 and Phase 4 together: add the SQLAlchemy `Student` model and the Pydantic schemas. I’ll keep it aligned with the fields already documented.
>
> I’ve got the current backend shape. I’m adding `models.py` and `schemas.py` now, then I’ll wire the model import into startup so table creation sees the `students` table.
>
> One small implementation choice: `StudentUpdate` will allow partial updates, which is friendlier for APIs even though the planned endpoint is `PUT`. All required fields remain enforced for `StudentCreate`.
>
> <details><summary>Created 2 files, edited a file</summary>
>
> - Wrote `./main.py` (+2 -0)
> - Wrote `./models.py` (+20 -0)
> - Wrote `./schemas.py` (+41 -0)
>
> </details>
>
> The model and schemas are in place. I spotted one dependency detail before testing: Pydantic’s `EmailStr` needs `email-validator`, so I’ll add that to both requirement files and tighten the model date type annotations.
>
> <details><summary>Edited 3 files</summary>
>
> - Wrote `./models.py` (+4 -3)
> - Wrote `./requirement.prod.txt` (+1 -1)
> - Wrote `./requirement.txt` (+1 -1)
>
> </details>
>
> Now I’m running syntax/import checks for the new phases. This will confirm SQLAlchemy sees the model and Pydantic can build the schemas.
>
> The compile check passed. The import check is still running, which is usually dependency import slowness in this environment; I’ll wait for its actual output.
</details>

Phase 3 and Phase 4 are complete.

Added:

[models.py](d:/training%20ja/models.py)
- Created `Student` SQLAlchemy model
- Added all required student fields
- Set `id` as primary key
- Set `email` as unique and indexed

[schemas.py](d:/training%20ja/schemas.py)
- Added `StudentCreate`
- Added `StudentUpdate`
- Added `StudentResponse`
- Added validation for field lengths, email format, dates, and status values

Updated:

[main.py](d:/training%20ja/main.py)
- Imports the student model so SQLAlchemy can create the `students` table

[requirement.txt](d:/training%20ja/requirement.txt) and [requirement.prod.txt](d:/training%20ja/requirement.prod.txt)
- Added `email-validator` because Pydantic `EmailStr` needs it

Verification passed:
- `python -m py_compile main.py database.py models.py schemas.py`
- Import test confirmed table name is `students` and schema fields load correctly

Next phase: CRUD logic in `crud.py`.

> lets go ahead with next two phases

<details><summary>6 previous messages</summary>

> I’ll do the next two phases together: reusable CRUD logic plus FastAPI routes. After that, the backend will have working student endpoints, still without seed data until the next phase.
>
> I’m going to add `crud.py` for database operations and `routes.py` for the HTTP layer, then include the router in `main.py`. I’ll also handle duplicate emails gracefully instead of letting SQLite errors leak out.
>
> <details><summary>Created 2 files, edited a file</summary>
>
> - Wrote `./crud.py` (+46 -0)
> - Wrote `./main.py` (+3 -0)
> - Wrote `./routes.py` (+75 -0)
>
> </details>
>
> The CRUD and route layers are added. I’m running compile/import checks, then I’ll exercise the endpoints in-process so we know the API behavior works without needing a running server.
>
> The route table is registered correctly. I’ll do a quick CRUD smoke test now using FastAPI’s test client: create one temporary student, read it, update it, delete it.
>
> The first smoke test found an important testing detail: `TestClient` did not run startup because I instantiated it outside a context manager, so the table was not created before the POST. I’ll rerun the smoke test with lifespan/startup enabled.
</details>

Phase 5 and Phase 6 are complete.

Added:

[crud.py](d:/training%20ja/crud.py)
- `get_all_students`
- `get_student_by_id`
- `get_student_by_email`
- `create_student`
- `update_student`
- `delete_student`

[routes.py](d:/training%20ja/routes.py)
- `GET /students`
- `GET /students/{student_id}`
- `POST /students`
- `PUT /students/{student_id}`
- `DELETE /students/{student_id}`
- Handles `404 Student not found`
- Handles duplicate email with `400 Student email already exists`

Updated:

[main.py](d:/training%20ja/main.py)
- Registered the student API router

Verification passed:
- Syntax check passed for all backend files
- CRUD smoke test passed:
  - `POST /students` → `201`
  - `GET /students/{id}` → `200`
  - `PUT /students/{id}` → `200`
  - `DELETE /students/{id}` → `204`
  - deleted student lookup → `404`

Next phase: seed data with 10 student records.

> lets go ahead with rest of the phases

<details><summary>6 previous messages</summary>

> I’ll finish the remaining backend phases now: seed data, CORS configuration, endpoint verification, and updated run instructions. This will complete the backend side before we move to frontend.
>
> I see a `students.db` already exists from the smoke test. I’ll add seed logic that is idempotent, so it inserts the 10 records only when those emails are not already present.
>
> <details><summary>Created a file, edited 2 files</summary>
>
> - Wrote `./README.md` (+31 -7)
> - Wrote `./main.py` (+16 -1)
> - Wrote `./seed.py` (+137 -0)
>
> </details>
>
> Seed data and CORS are wired in. I’m going to verify everything now: compile all backend files, run startup so seeding happens, and check the endpoint responses including the seeded count.
>
> Core verification passed. I’ll run one final CRUD check now against the completed app to ensure seeding didn’t disturb create/update/delete behavior.
>
> That last check hit PowerShell quoting, not an app failure. I’ll rerun it with safer quoting so the result is meaningful.
</details>

Backend remaining phases are complete.

Added:

[seed.py](d:/training%20ja/seed.py)
- Adds 10 seeded student records
- Prevents duplicate seed inserts by checking email

Updated:

[main.py](d:/training%20ja/main.py)
- Added CORS for `http://localhost:5173`
- Runs database table creation on startup
- Runs seed data on startup

Updated:

[README.md](d:/training%20ja/README.md)
- Updated project structure
- Added backend run instructions
- Listed available API endpoints
- Documented seed data and CORS

Verification passed:
- Syntax check passed for all backend files
- `GET /students` returned `200` with `10` seeded records
- CORS preflight returned `200`
- CRUD smoke test passed:
  - `POST` → `201`
  - `PUT` → `200`
  - `DELETE` → `204`
  - deleted record lookup → `404`

Backend is now complete for the planned CRUD scope.

> lets test the backend

<details><summary>3 previous messages</summary>

> I’ll run a proper backend test pass now: syntax checks, startup/seed verification, CRUD endpoint behavior, duplicate email, missing student, and validation errors. This should tell us whether the API is ready before frontend work.
>
> Syntax checks passed. I’m moving to endpoint tests using FastAPI’s in-process test client so we can test the API without starting a separate server window.
>
> The API behavior looks good. I’ll also test the actual Uvicorn server startup briefly, call it over HTTP, then stop it so there’s no background process left running.
</details>

Backend test passed.

I verified:

- Syntax compile for all backend files: passed
- Root endpoint `GET /`: `200`
- Student list `GET /students`: `200`, returned `10` seeded records
- Single student `GET /students/{id}`: `200`
- Missing student: `404`
- Create student: `201`
- Duplicate email: `400 Student email already exists`
- Update student: `200`
- Invalid payload validation: `422`
- Delete student: `204`
- Deleted student lookup: `404`
- CORS preflight from `http://localhost:5173`: `200`
- Real Uvicorn server startup: passed, returned `10` students over HTTP

I also stopped the test server after checking it, so nothing is left running in the background.

> This site can’t be reached
> localhost refused to connect.
> Try:
>
> Checking the connection
> Checking the proxy and the firewall
> Error code: ERR_CONNECTION_REFUSED

<details><summary>2 previous messages</summary>

> That error means the FastAPI server is not currently running on `localhost:8000`. I’ll start the backend server now and keep it running so you can open it in the browser.
>
> The server process has started. I’ll quickly call the API once from the terminal to confirm it is actually accepting requests.
</details>

The backend server is now running.

Open these in your browser:

```text
http://127.0.0.1:8000
```

FastAPI docs:

```text
http://127.0.0.1:8000/docs
```

Student API:

```text
http://127.0.0.1:8000/students
```

I verified the server responds successfully from the terminal.

> run the backend

<details><summary>7 previous messages</summary>

> I’ll start the FastAPI backend on port `8000` and verify it responds before handing you the URL.
>
> <details><summary>Ran a command</summary>
>
> - Ran `python -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload`
>
> </details>
>
> The backend process is running. I’m checking the root endpoint now to make sure it is accepting requests.
>
> <details><summary>Ran a command</summary>
>
> - Ran `Invoke-RestMethod -Uri 'http://127.0.0.1:8000/' -Method Get`
>
> </details>
>
> The first request was refused, so Uvicorn likely failed during startup. I’ll read the server output and fix whatever it’s complaining about.
>
> The server did start; the check just arrived a moment too early. I’ll verify again now that startup is complete.
>
> <details><summary>Ran a command</summary>
>
> - Ran `Invoke-RestMethod -Uri 'http://127.0.0.1:8000/' -Method Get`
>
> </details>
</details>

Backend is running now.

Open:

```text
http://127.0.0.1:8000
```

API docs:

```text
http://127.0.0.1:8000/docs
```

Students endpoint:

```text
http://127.0.0.1:8000/students
```

I verified the root endpoint is responding successfully.

> what ar ethe commands you run the back end

The backend run command is:

```bash
python -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload
```

Before running it, install dependencies:

```bash
pip install -r requirement.txt
```

Then open:

```text
http://127.0.0.1:8000/docs
```

If you are using the virtual environment named `env`, use:

```bash
env\Scripts\python -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload
```

> okk lets go aheaad with creating front end first lets create the pahse by phase implementations then we will create the code
>
> DONT GENERATE THE CODE UNTILL I SAY
>
> did y0ou get my point ?? do you have any qustions??

Yes, Yasar, I got your point clearly.

We will **not generate frontend code yet**.

Next step only:

```text
Create frontend phase-by-phase implementation documentation
```

Frontend stack we already agreed:

```text
React
Plain CSS
Connect to FastAPI backend
CRUD only
No login/authentication
```

One question before I create the document:

Should the frontend phase document be named:

```text
docs/frontend-phase-implementation.md
```

I recommend this name so it matches the backend document style.

> yess go ahead

<details><summary>2 previous messages</summary>

> Got it. I’ll create only the frontend phase implementation document now, no React code or project files yet.
>
> <details><summary>Created a file</summary>
>
> - Wrote `./docs/frontend-phase-implementation.md` (+265 -0)
>
> </details>
</details>

Created the frontend phase document:

[docs/frontend-phase-implementation.md](d:/training%20ja/docs/frontend-phase-implementation.md)

No frontend code was generated.

It includes:
- React + plain CSS stack
- Backend API dependency
- Planned frontend folder structure
- Student fields
- Phase-by-phase frontend implementation plan
- Testing and completion checklist

> lets go with phase1 and and phase 2 dont genrate code for other phases

<details><summary>34 previous messages</summary>

> I’ll build only frontend Phase 1 and Phase 2: the React/Vite project shell and the student API service layer. I won’t create the list, form, update, delete UI components from later phases yet.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `Get-ChildItem -Force | Select-Object Name,Mode,Length`
> - Ran `npm --version`
> - Ran `node --version`
>
> </details>
>
> Node is available, and I’m checking npm before choosing the setup path. I also noticed an extra `requirments...` file in the root; I’ll leave it alone unless it becomes relevant.
>
> I’m going to scaffold the Vite React frontend manually so the structure is clear and controlled. Phase 2 will add only `studentsApi.js` with reusable backend calls; no CRUD screens yet.
>
> <details><summary>Created 9 files, edited a file</summary>
>
> - Wrote `./.gitignore` (+5 -1)
> - Wrote `./frontend/.env` (+2 -0)
> - Wrote `./frontend/.env_example` (+2 -0)
> - Wrote `./frontend/index.html` (+13 -0)
> - Wrote `./frontend/package.json` (+19 -0)
> - Wrote `./frontend/src/App.jsx` (+17 -0)
> - Wrote `./frontend/src/api/studentsApi.js` (+54 -0)
> - Wrote `./frontend/src/main.jsx` (+12 -0)
> - Wrote `./frontend/src/styles/main.css` (+61 -0)
> - Wrote `./frontend/vite.config.js` (+11 -0)
>
> </details>
>
> Phase 1/2 files are in place. I’ll install the frontend dependencies and run a build check; if npm needs network access and gets blocked, I’ll request permission properly.
>
> <details><summary>Ran a command</summary>
>
> - Ran `npm install`
>
> </details>
>
> `npm install` is still running, which is normal on first setup. I’ll wait for it to finish before trying the build.
>
> Still waiting on npm. Since dependency installs can take a bit on Windows, I’ll keep monitoring rather than starting anything else in parallel.
>
> The install is taking unusually long and hasn’t printed progress. I’ll give it one more check, then if it remains stuck I’ll stop and use the lighter verification path.
>
> `npm install` appears stuck with no output, so I’m stopping that install process to avoid leaving a hung command around. Then I’ll inspect what, if anything, it created.
>
> The process backend can’t send Ctrl+C to that npm session, so I’m going to identify the npm process for this workspace and stop only that install process.
>
> <details><summary>Ran a command</summary>
>
> - Ran `Get-CimInstance Win32_Process | Where-Object { $_.CommandLine -like '*npm install*' -and $_.CommandLine -like '*training ja*' } | Select-Object ProcessId,CommandLine`
>
> </details>
>
> Process inspection is restricted, so I’ll leave that blocked session alone for a moment and check the filesystem from a separate command to see whether install completed enough to produce `node_modules` or a lockfile.
>
> <details><summary>Ran a command</summary>
>
> - Ran `Get-ChildItem -Force | Select-Object Name,Mode,Length`
>
> </details>
>
> No `node_modules` or lockfile were created, so dependency installation didn’t actually complete. I’ll rerun `npm install` with approval for network access, which is the normal reason this step stalls in the sandbox.
>
> <details><summary>Ran a command</summary>
>
> - Ran `npm install`
>
> </details>
>
> The approved install is running too; I’m watching it now. It still has not emitted output, so I’ll give it a bit more time and then verify the filesystem again.
>
> Still no output from npm. I’ll check whether files are appearing while it runs; if not, I’ll avoid blocking further and verify the code structure without installed packages.
>
> <details><summary>Ran a command</summary>
>
> - Ran `Get-ChildItem -Force | Select-Object Name,Mode,Length`
>
> </details>
>
> Good, the install created `node_modules` and `package-lock.json`; npm may just be slow to return. I’ll wait once more for the command to exit cleanly before running the build check.
>
> Dependencies installed successfully with no vulnerabilities. I’ll run the frontend build now to confirm the Phase 1/2 scaffold compiles.
>
> <details><summary>Ran a command</summary>
>
> - Ran `npm run build`
>
> </details>
>
> The build failed because Vite could not create its temporary folder inside `node_modules`, which looks like a permissions issue from the install step. I’ll rerun the build with approval so Vite can write its cache/output folders.
>
> <details><summary>Ran a command</summary>
>
> - Ran `npm run build`
>
> </details>
>
> The frontend build passed. I’m doing one last cleanup check: making sure there isn’t an old npm session still running from the earlier stalled install attempt.
>
> The earlier sandboxed npm install has exited with the expected network permission error, and the approved install/build path worked. I’ll start the frontend dev server now so Phase 1 is actually runnable.
>
> <details><summary>Ran a command</summary>
>
> - Ran `npm run dev -- --host 127.0.0.1`
>
> </details>
>
> The frontend dev server is starting. I’ll poll it once and then check that the page responds on port `5173`.
>
> The dev server hit the same Vite cache permission issue as the first build. I’ll start it with the same approved command pattern so Vite can write its temp files.
>
> <details><summary>Ran a command</summary>
>
> - Ran `npm run dev -- --host 127.0.0.1`
>
> </details>
>
> Frontend server is starting again with the needed permissions. I’ll confirm the local page is reachable.
>
> Vite is running at `http://127.0.0.1:5173/`. I’ll make one HTTP check so we know the page is being served.
>
> <details><summary>Ran a command</summary>
>
> - Ran `Invoke-WebRequest -Uri 'http://127.0.0.1:5173/' -UseBasicParsing | Select-Object StatusCode`
>
> </details>
</details>

Done, Yasar. Frontend Phase 1 and Phase 2 are complete only.

Created:

- [frontend/package.json](d:/training%20ja/frontend/package.json)
- [frontend/index.html](d:/training%20ja/frontend/index.html)
- [frontend/vite.config.js](d:/training%20ja/frontend/vite.config.js)
- [frontend/.env](d:/training%20ja/frontend/.env)
- [frontend/.env_example](d:/training%20ja/frontend/.env_example)
- [frontend/src/main.jsx](d:/training%20ja/frontend/src/main.jsx)
- [frontend/src/App.jsx](d:/training%20ja/frontend/src/App.jsx)
- [frontend/src/styles/main.css](d:/training%20ja/frontend/src/styles/main.css)
- [frontend/src/api/studentsApi.js](d:/training%20ja/frontend/src/api/studentsApi.js)

Also updated `.gitignore` for frontend build/dependency folders.

Verification:
- `npm install` completed successfully
- `npm run build` passed
- Frontend dev server is running
- Browser URL: `http://127.0.0.1:5173/`
- HTTP check returned `200`

No later-phase CRUD UI components were created yet.

> lets go ahead with 3 and 4

<details><summary>8 previous messages</summary>

> I’ll add only Phase 3 and Phase 4 now: student list view and add-student form. I’ll avoid update/delete UI until you ask for those phases.
>
> <details><summary>Ran 4 commands</summary>
>
> - Ran `Get-Content frontend\src\styles\main.css`
> - Ran `Get-Content frontend\src\api\studentsApi.js`
> - Ran `Get-Content frontend\src\App.jsx`
> - Ran `Get-ChildItem -Recurse frontend\src | Select-Object FullName,Length`
>
> </details>
>
> I’ve confirmed the frontend is still a simple shell plus API layer. I’m going to add the list/table and create form components, then connect them in `App.jsx` with loading, empty, success, and error states.
>
> <details><summary>Created 3 files, edited 2 files</summary>
>
> - Wrote `./frontend/src/App.jsx` (+89 -6)
> - Wrote `./frontend/src/components/StudentForm.jsx` (+157 -0)
> - Wrote `./frontend/src/components/StudentList.jsx` (+30 -0)
> - Wrote `./frontend/src/components/StudentTable.jsx` (+55 -0)
> - Wrote `./frontend/src/styles/main.css` (+227 -8)
>
> </details>
>
> Phase 3/4 UI is implemented. I’ll run the frontend build now, then check whether the backend is reachable so the list can load real seeded students.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `npm run build`
> - Ran `Invoke-RestMethod -Uri 'http://127.0.0.1:8000/students' -Method Get | Select-Object -First 1`
>
> </details>
>
> The build passed, and the backend is returning the seeded students. I’ll also check the running Vite page responds so you can view the new Phase 3/4 UI in the browser.
>
> <details><summary>Ran a command</summary>
>
> - Ran `Invoke-WebRequest -Uri 'http://127.0.0.1:5173/' -UseBasicParsing | Select-Object StatusCode`
>
> </details>
</details>

Done, Yasar. Frontend Phase 3 and Phase 4 are complete only.

Added:

- [frontend/src/components/StudentList.jsx](d:/training%20ja/frontend/src/components/StudentList.jsx)
- [frontend/src/components/StudentTable.jsx](d:/training%20ja/frontend/src/components/StudentTable.jsx)
- [frontend/src/components/StudentForm.jsx](d:/training%20ja/frontend/src/components/StudentForm.jsx)

Updated:

- [frontend/src/App.jsx](d:/training%20ja/frontend/src/App.jsx)
- [frontend/src/styles/main.css](d:/training%20ja/frontend/src/styles/main.css)

What works now:
- Loads students from backend `GET /students`
- Displays students in a table
- Shows loading, empty, and error states
- Adds a new student using `POST /students`
- Shows success/error messages
- Form clears after successful add

Verification:
- `npm run build` passed
- Backend `/students` is returning seeded data
- Frontend page responds at `http://127.0.0.1:5173/`

I did not generate update/delete UI yet.

> have you not connected the front and back end aslo tell me why you created env file separately for front end while env file already exist in root
>
> User context
>
> Images:
> - `data:image/png;base64,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`

<details><summary>7 previous messages</summary>

> Yes, the frontend is written to connect to the backend through `VITE_API_BASE_URL`, but that screenshot means the browser cannot reach the backend right now. I’ll check both servers and the configured URL, then I’ll fix the setup so this is less confusing.
>
> <details><summary>Ran 4 commands</summary>
>
> - Ran `Get-Content frontend\.env`
> - Ran `Get-Content .env`
> - Ran `Invoke-RestMethod -Uri 'http://127.0.0.1:8000/students' -Method Get | Select-Object -First 1`
> - Ran `Invoke-WebRequest -Uri 'http://127.0.0.1:5173/' -UseBasicParsing | Select-Object StatusCode`
>
> </details>
>
> The backend and frontend are both reachable from the terminal, so the issue is not that the API service layer is missing. I found the likely cause: the frontend is opened at `http://127.0.0.1:5173`, but backend CORS allowed only `http://localhost:5173`. Browsers treat those as different origins. I’m going to allow both local frontend origins in the backend.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./main.py` (+12 -1)
>
> </details>
>
> CORS is updated. I’ll verify the backend now allows `127.0.0.1:5173`, which is the origin shown by your frontend dev URL.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `python -m py_compile main.py`
> - Ran `python -c "from fastapi.testclient import TestClient; from main import app; c=TestClient(app); c.__enter__(); r=c.options('/students', headers={'Origin':'http://127.0.0.1:5173','Access-Control-Request-Method':'GET'}); print(r.status_code, r.headers.get('access-control-allow-origin')); c.__exit__(None,None,None)"`
>
> </details>
>
> The CORS check passes now for `http://127.0.0.1:5173`. If your backend is running with `--reload`, it should pick this up automatically; otherwise restart the backend once.
</details>

Yes, the frontend and backend are connected.

The frontend calls this backend URL from [frontend/src/api/studentsApi.js](d:/training%20ja/frontend/src/api/studentsApi.js):

```js
http://127.0.0.1:8000
```

Your screenshot showed `Failed to fetch` because of a CORS origin mismatch:

- Frontend opened at: `http://127.0.0.1:5173`
- Backend allowed only: `http://localhost:5173`

Browsers treat `127.0.0.1` and `localhost` as different origins.

I fixed [main.py](d:/training%20ja/main.py) so backend allows both:

```text
http://localhost:5173
http://127.0.0.1:5173
```

About the separate frontend `.env`:

The root `.env` is for the Python backend. React/Vite does not automatically read that file because the frontend project lives inside `frontend/`.

Also, frontend env variables must start with `VITE_`, like:

```env
VITE_API_BASE_URL=http://127.0.0.1:8000
```

So the separate [frontend/.env](d:/training%20ja/frontend/.env) is normal for React/Vite projects. It is not the same as the backend `.env`.

Restart backend if needed:

```bash
python -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload
```

Then refresh:

```text
http://127.0.0.1:5173
```

> User context
>
> Images:
> - `data:image/png;base64,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`

<details><summary>11 previous messages</summary>

> That still looks like the browser request is being blocked or the running backend process has not picked up the CORS change yet. I’ll check the live backend response with the exact browser origin and then restart the backend if it’s still serving the old config.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `Invoke-RestMethod -Uri 'http://127.0.0.1:8000/students' -Method Get | Measure-Object | Select-Object Count`
> - Ran `Invoke-WebRequest -Uri 'http://127.0.0.1:8000/students' -Method Options -Headers @{Origin='http://127.0.0.1:5173'; 'Access-Control-Request-Method'='GET'} -UseBasicParsing | Select-Object StatusCode,Headers`
> - Ran `Invoke-WebRequest -Uri 'http://127.0.0.1:5173/' -UseBasicParsing | Select-Object StatusCode`
>
> </details>
>
> Found it: the live backend is still rejecting `http://127.0.0.1:5173`, so it’s running the old CORS configuration. I’ll restart the backend server so it loads the updated `main.py`.
>
> The backend noticed `main.py` changed, but it is still showing 400s in the old process output. I’ll inspect the live file once and then run a fresh CORS check after reload settles.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Get-Content main.py`
> - Ran `Start-Sleep -Seconds 3; Invoke-WebRequest -Uri 'http://127.0.0.1:8000/students' -Method Options -Headers @{Origin='http://127.0.0.1:5173'; 'Access-Control-Request-Method'='GET'} -UseBasicParsing | Select-Object StatusCode,Headers`
>
> </details>
>
> The file is correct, but the server listening on port `8000` is still serving the old CORS config. I’m going to identify the process bound to port `8000`, stop that stale server, and start a fresh one.
>
> <details><summary>Ran a command</summary>
>
> - Ran `netstat -ano | findstr :8000`
>
> </details>
>
> Port `8000` is owned by the stale Uvicorn reloader process. I’ll stop that process and start the backend fresh from the current code.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Stop-Process -Id 10868 -Force`
> - Ran `python -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload`
>
> </details>
>
> Fresh backend is starting. I’ll verify the CORS preflight and `/students` now; if both pass, your browser refresh should load the records.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Invoke-WebRequest -Uri 'http://127.0.0.1:8000/students' -Method Options -Headers @{Origin='http://127.0.0.1:5173'; 'Access-Control-Request-Method'='GET'} -UseBasicParsing | Select-Object StatusCode,Headers`
> - Ran `Invoke-RestMethod -Uri 'http://127.0.0.1:8000/students' -Method Get | Measure-Object | Select-Object Count`
>
> </details>
</details>

Fixed. The backend was still running with the old CORS config.

I stopped the stale backend process on port `8000` and restarted it fresh. Now this passes:

```text
OPTIONS /students from http://127.0.0.1:5173 -> 200
```

So refresh the frontend page:

```text
http://127.0.0.1:5173
```

If it still shows the old error, do a hard refresh:

```text
Ctrl + F5
```

Backend is running at:

```text
http://127.0.0.1:8000
```

The issue was not missing frontend-backend connection. It was the running backend process still using the old CORS settings.

> training ja> python -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload
> INFO:     Will watch for changes in these directories: ['D:\\training ja']
> INFO:     Uvicorn running on http://127.0.0.1:8000 (Press CTRL+C to quit)
> INFO:     Started reloader process [1100] using WatchFiles
> INFO:     Started server process [16796]
> INFO:     Waiting for application startup.
> INFO:     Application startup complete.
> ERROR:    Traceback (most recent call last):
>   File "C:\Python312\Lib\asyncio\runners.py", line 118, in run
>     return self._loop.run_until_complete(task)
>            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "C:\Python312\Lib\asyncio\base_events.py", line 691, in run_until_complete
>     return future.result()
>            ^^^^^^^^^^^^^^^
> asyncio.exceptions.CancelledError
>
> During handling of the above exception, another exception occurred:
>
> Traceback (most recent call last):
>   File "C:\Python312\Lib\asyncio\runners.py", line 195, in run
>     return runner.run(main)
>            ^^^^^^^^^^^^^^^^
>   File "C:\Python312\Lib\asyncio\runners.py", line 123, in run
>     raise KeyboardInterrupt()
> KeyboardInterrupt
>
> During handling of the above exception, another exception occurred:
>
> Traceback (most recent call last):
>   File "D:\training ja\env\Lib\site-packages\starlette\routing.py", line 700, in lifespan
>     await receive()
>   File "D:\training ja\env\Lib\site-packages\uvicorn\lifespan\on.py", line 137, inreceive
>     return await self.receive_queue.get()
>            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "C:\Python312\Lib\asyncio\queues.py", line 158, in get
>     await getter
> asyncio.exceptions.CancelledError

That traceback is not a backend bug. It means the Uvicorn server was stopped with `Ctrl+C` / keyboard interrupt.

These lines show the server actually started correctly:

```text
INFO:     Uvicorn running on http://127.0.0.1:8000
INFO:     Application startup complete.
```

Then this part means it was interrupted:

```text
KeyboardInterrupt
asyncio.exceptions.CancelledError
```

So to run it again, use:

```bash
python -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload
```

Keep that terminal open. Do not press `Ctrl+C` unless you want to stop the backend.

Then open:

```text
http://127.0.0.1:8000/docs
```

For frontend, use another terminal:

```bash
cd frontend
npm run dev -- --host 127.0.0.1
```

Then open:

```text
http://127.0.0.1:5173
```

> User context
>
> Images:
> - `data:image/png;base64,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`

<details><summary>6 previous messages</summary>

> That `[object Object]` is coming from FastAPI validation errors. The frontend is receiving a structured error object, but our API helper is converting it directly to text. I’ll fix the API error formatter so validation errors show readable messages like `email: value is not a valid email address`.
>
> <details><summary>Ran a command</summary>
>
> - Ran `Get-Content frontend\src\api\studentsApi.js`
>
> </details>
>
> I found the exact issue: `data.detail` can be an array of validation objects, not just a string. I’m adding a small formatter in the API layer and keeping the rest of the UI unchanged.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./frontend/src/api/studentsApi.js` (+22 -3)
>
> </details>
>
> The formatter is in place. I’ll run the frontend build to make sure nothing broke, then you can refresh and retry the same form.
>
> <details><summary>Ran a command</summary>
>
> - Ran `npm run build`
>
> </details>
</details>

Fixed the `[object Object]` message.

Updated:

[frontend/src/api/studentsApi.js](d:/training%20ja/frontend/src/api/studentsApi.js)

Now FastAPI validation errors will show readable text instead of `[object Object]`.

For your screenshot, the issue is probably the email:

```text
aakgiau@gmailcom
```

It should be something like:

```text
aakgiau@gmail.com
```

After refresh, the error should show a proper message such as:

```text
email: value is not a valid email address
```

Verification:
- `npm run build` passed.

> lets go ahead with remaninig phases

<details><summary>12 previous messages</summary>

> I’ll complete the remaining frontend phases now: edit/update flow, delete flow, styling refinements, and integration checks. Since the core form/table already exists, I’ll extend those pieces rather than adding a separate UI pattern.
>
> <details><summary>Ran 4 commands</summary>
>
> - Ran `Get-Content frontend\src\components\StudentTable.jsx`
> - Ran `Get-Content frontend\src\App.jsx`
> - Ran `Get-Content frontend\src\styles\main.css`
> - Ran `Get-Content frontend\src\components\StudentForm.jsx`
>
> </details>
>
> I’ve got the current frontend shape. I’m going to update the form so it can switch between Add and Edit modes, add row actions to the table, and wire update/delete API calls through `App.jsx`.
>
> A small behavior decision: delete will use a browser confirmation for now, and edit will reuse the same form. That keeps the UI clear and avoids creating extra modal complexity outside the planned scope.
>
> <details><summary>Edited 4 files</summary>
>
> - Wrote `./frontend/src/App.jsx` (+73 -7)
> - Wrote `./frontend/src/components/StudentForm.jsx` (+9 -5)
> - Wrote `./frontend/src/components/StudentList.jsx` (+6 -3)
> - Wrote `./frontend/src/components/StudentTable.jsx` (+20 -2)
>
> </details>
>
> The update/delete logic is wired. I’m adding the CSS for the new action buttons and slightly widening the table so the extra column doesn’t squeeze content.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./frontend/src/styles/main.css` (+23 -1)
>
> </details>
>
> The remaining UI phases are implemented. I’ll run a production build first, then test the live frontend/backend endpoints.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `npm run build`
> - Ran `Invoke-RestMethod -Uri 'http://127.0.0.1:8000/students' -Method Get | Measure-Object | Select-Object Count`
>
> </details>
>
> Build passed. I’m going to do one browser-level sanity check of the running frontend page next, mainly to catch obvious render errors after adding the action column.
>
> The production build is clean, and the backend is reachable. I’ll just confirm the dev server is serving the app, then I’ll summarize what changed.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Invoke-RestMethod -Uri 'http://127.0.0.1:8000/students' -Method Get | ConvertTo-Json -Depth 3`
> - Ran `Invoke-WebRequest -Uri 'http://127.0.0.1:5173/' -UseBasicParsing | Select-Object StatusCode`
>
> </details>
</details>

Done. Remaining frontend phases are implemented.

Updated:
- [frontend/src/App.jsx](d:/training%20ja/frontend/src/App.jsx)
- [frontend/src/components/StudentForm.jsx](d:/training%20ja/frontend/src/components/StudentForm.jsx)
- [frontend/src/components/StudentList.jsx](d:/training%20ja/frontend/src/components/StudentList.jsx)
- [frontend/src/components/StudentTable.jsx](d:/training%20ja/frontend/src/components/StudentTable.jsx)
- [frontend/src/styles/main.css](d:/training%20ja/frontend/src/styles/main.css)

Now the frontend supports:
- View students
- Add student
- Edit/update student
- Delete student with confirmation
- Cancel edit mode
- Success/error messages
- Responsive styling
- Action buttons in the table

Verification:
- `npm run build` passed
- Frontend responds at `http://127.0.0.1:5173/`
- Backend responds at `http://127.0.0.1:8000/students`
- Backend currently returns the seeded students plus your added test student.

> [yasarameenhn/student-management-](https://github.com/yasarameenhn/student-management-)  i have created the repo push into my github account before doing this create a prompt.md store our all converstaion in this file then push

<details><summary>19 previous messages</summary>

> I’ll prepare this carefully: first I’ll create `prompt.md` with the project conversation/history, then I’ll check the git state, commit the project files that should be tracked, add your GitHub remote, and push. I’ll make sure local env/database/dependency folders stay out of the commit.
>
> <details><summary>Ran 4 commands</summary>
>
> - Ran `git remote -v`
> - Ran `git status --short`
> - Ran `Get-ChildItem -Force | Select-Object Name,Mode,Length`
> - Ran `Get-Content .gitignore`
>
> </details>
>
> Git sees the existing `.git` folder as invalid, so this workspace is not currently an initialized repository from Git’s point of view. I’ll create `prompt.md` first, then initialize Git cleanly in this folder before pushing.
>
> <details><summary>Ran a command</summary>
>
> - Ran `Get-ChildItem -Force .git | Select-Object Name,Mode,Length`
>
> </details>
>
> The `.git` directory is empty, which explains the Git error. I’m writing the conversation/project prompt file now.
>
> <details><summary>Created a file</summary>
>
> - Wrote `./prompt.md` (+427 -0)
>
> </details>
>
> `prompt.md` is created with the full project conversation and implementation history. Now I’ll initialize Git properly and inspect exactly what would be committed before pushing.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `git init`
> - Ran `Get-Content prompt.md | Select-Object -First 20`
>
> </details>
>
> Git initialization failed because `.git` is protected in this sandbox. I’ll rerun Git operations with approval so Git can write its metadata, then continue with add/commit/push.
>
> <details><summary>Ran a command</summary>
>
> - Ran `git init`
>
> </details>
>
> Git is initialized now. I’ll check the tracked/untracked set and make sure ignored files like `.env`, `students.db`, virtualenv, `node_modules`, and build output are not staged.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `git status --short --ignored`
> - Ran `git branch --show-current`
>
> </details>
>
> The ignore rules are working: `.env`, database, virtualenv, `node_modules`, and `dist` are ignored. I noticed one extra file named `requirments.prod.txt` with a typo, so I’ll inspect it before deciding whether to commit it or leave it out.
>
> <details><summary>Ran a command</summary>
>
> - Ran `Get-Content requirments.prod.txt`
>
> </details>
>
> `requirments.prod.txt` is a duplicate typo file, so I’ll leave it untracked and push the correctly named `requirement.prod.txt`. Next I’ll stage only the intended project files, switch the branch to `main`, and commit.
>
> <details><summary>Ran a command</summary>
>
> - Ran `git add .env_example .gitignore LICENSE README.md crud.py database.py docs frontend main.py models.py prompt.md requirement.prod.txt requirement.txt routes.py schemas.py seed.py`
>
> </details>
>
> Staging needs write access to `.git`, so I’ll rerun the Git staging with approval. That’s expected under this workspace’s protected `.git` permissions.
>
> <details><summary>Ran a command</summary>
>
> - Ran `git add .env_example .gitignore LICENSE README.md crud.py database.py docs frontend main.py models.py prompt.md requirement.prod.txt requirement.txt routes.py schemas.py seed.py`
>
> </details>
>
> <details><summary>Ran <code>&quot;git add .env_example .gitignore LICENSE README.md crud.py database.py docs frontend main.py models.py prompt.md requirement.prod.txt requirement.txt routes.py schemas.py seed.py&quot;</code></summary>
>
> ```bash
> $ "git add .env_example .gitignore LICENSE README.md crud.py database.py docs frontend main.py models.py prompt.md requirement.prod.txt requirement.txt routes.py schemas.py seed.py"
> ```
>
> Running
>
> </details>
</details>
