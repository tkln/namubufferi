# Requires Python and pip to be installed

# Create a clean venv (install virtualenv if needed)
pip install virtualenv
virtualenv venv --clear

# Install requirements in the venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

# Apply database migrations
python manage.py makemigrations
python manage.py migrate

# Create admin account
echo "___________.__        __          __                 .__     __                      .__ "
echo "\__    ___/|__| _____/  |_  _____|  | _______ _______|__|   |__| ____   ____    ____ |__|"
echo "  |    |   |  |/ __ \   __\/  ___/  |/ /\__  \\_  __ \  |   |  |/ __ \ /    \  / ___\|  |"
echo "  |    |   |  \  ___/|  |  \___ \|    <  / __ \|  | \/  |   |  \  ___/|   |  \/ /_/  >  |"
echo "  |____|   |__|\___  >__| /____  >__|_ \(____  /__|  |__/\__|  |\___  >___|  /\___  /|__|"
echo "                   \/          \/     \/     \/         \______|    \/     \//_____/     "
echo ""
echo ""
echo "Create an admin account for namupankki..."
python manage.py createsuperuser

# Good to go.
echo "You can now login to http://localhost:port/admin with your superuser to add test stuff to namupankki."
echo "Build complete. Run server locally with './run.sh'"
