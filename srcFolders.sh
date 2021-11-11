#project start folder script
echo "node_modules/" >> .gitignore

touch README.md
touch index.html

mkdir src
cd src

mkdir css img js scss

cd css
touch style.css

cd ..
cd js
touch script.js

cd ..
cd scss

mkdir abstracts base layout components pages themes vendors
touch main.scss

cd abstracts
touch _functions.scss _mixins.scss _variables.scss _animations.scss

cd .. 
cd vendors
# touch _bootstrap.scss jquery-ui.scss 

cd ..
cd base 
touch _reset.scss _typography.scss

cd ..
cd components
touch _buttons.scss _slider.scss

cd ..
cd pages
touch _home.scss _about.scss _contact.scss

cd ..
cd themes
touch _dark.scss _light.scss

# Use below imports in your main main.scss file
cd ..
echo '
@import "abstracts/variables";
@import "abstracts/functions";
@import "abstracts/mixins";
@import "abstracts/animations";

@import "vendors/bootstrap";
@import "vendors/jquery-ui";

@import "base/reset";
@import "base/typography";

@import "layout/navigation";
@import "layout/header";
@import "layout/footer";
@import "layout/sidebar";
@import "layout/forms";

@import "components/buttons";
@import "components/carousel";
@import "components/slider";

@import "pages/home";
@import "pages/about";
@import "pages/contact";

@import "themes/theme";
@import "themes/admin";
' >> main.scss