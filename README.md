# CodeFlow Developers — Business Portfolio Website

A full-stack business portfolio website for **CodeFlow Developers**, built with Django. Showcases services, projects, and team information — with a working contact form and full admin control over all content.

---

## Features

- **Home Page** — Hero section introducing CodeFlow Developers with a call-to-action
- **About Page** — Company background, mission, and team overview
- **Services Page** — Services offered by CodeFlow Developers
- **Projects Page** — Dynamic project showcase managed via Django admin, each with title, description, tech stack, live URL, and GitHub link
- **Contact Form** — Validated inquiry form that stores messages in the database with read/unread tracking in admin
- **Admin Panel** — Full control over projects, services, and client messages via Django admin

---

## Tech Stack

| Layer      | Technology                   |
|------------|------------------------------|
| Backend    | Django 6.0                   |
| Database   | MySQL                        |
| Frontend   | Django Templates + HTML, CSS |
| Templating | Jinja2 (via Django)          |
| Media      | Django media file handling   |

---

## Project Structure

```
portfolio_project/
├── portfolio/          # Project settings and root URL config
├── main/               # Home page
├── about/              # About page
├── services/           # Services page
├── projects/           # Project showcase — managed via admin
├── contact/            # Client inquiry form and message storage
├── media/              # Uploaded project images
├── manage.py
```

---

## Getting Started

### Prerequisites

- Python 3.10+
- MySQL server running locally
- pip

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/portfolio_project.git
   cd portfolio_project
   ```

2. **Create and activate a virtual environment**
   ```bash
   python -m venv venv
   source venv/bin/activate        # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install django pillow mysqlclient python-dotenv
   ```

4. **Create a `.env` file in the project root**
   ```
   SECRET_KEY=your-secret-key-here
   DEBUG=True
   DB_NAME=portfolio_db
   DB_USER=root
   DB_PASSWORD=your-mysql-password
   DB_HOST=localhost
   DB_PORT=3306
   ```

5. **Create the MySQL database**
   ```sql
   CREATE DATABASE portfolio_db;
   ```

6. **Apply migrations**
   ```bash
   python manage.py migrate
   ```

7. **Create a superuser** (for admin access)
   ```bash
   python manage.py createsuperuser
   ```

8. **Run the development server**
   ```bash
   python manage.py runserver
   ```

   Visit `http://127.0.0.1:8000` in your browser.

---

## URL Routes

| URL         | Description         |
|-------------|---------------------|
| `/`         | Home page           |
| `/about`    | About page          |
| `/services` | Services page       |
| `/projects` | Project showcase    |
| `/contact`  | Client inquiry form |
| `/admin/`   | Django admin panel  |

---

## Managing Content

All content is managed through the Django admin panel.

**Adding a Project:**
1. Go to `/admin/` and log in
2. Navigate to **Projects → Add Project**
3. Fill in title, description, tech stack, GitHub URL, live URL, and image
4. Set the `order` field to control display order

**Viewing Client Messages:**
1. Go to `/admin/` → **Contact → Contact Messages**
2. Messages are marked as read/unread for easy tracking

---

## About CodeFlow Developers

CodeFlow Developers is a freelance development team offering web development, backend solutions, and custom software services.

---

## License

© CodeFlow Developers. All rights reserved.