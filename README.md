# Omnicalc `params`

## Standard Workflow

 1. Clone this repository down to your computer.
 1. In the GitHub Desktop app, [create a branch for your work](https://help.github.com/desktop/guides/contributing/creating-a-branch-for-your-work/#creating-a-branch).
 1. Open the entire folder you downloaded in Atom.
 1. Make your first change to the code. (You could modify this README.md file by adding your username next to the project in the heading, for example.)
 1. In the GitHub Desktop app, create a commit. You *must* type a "summary"; "description" is optional.
 1. Click Publish. Verify that your branch is now visible on your fork at GitHub.com in the "Branch" dropdown.
 1. **Commit and Sync often as you work.**
 1. Make new branches freely to experiment. You can always switch back to an older branch and start over. **When in doubt, create a branch**, _especially_ before starting on a new task.
 1. Run `rails grade` as often as you like to see how you are doing.
 1. You can push commits and `rails grade` right up until the due date.
 1. If you have a question about your code, a great way to get feedback is to open a [Pull Request](https://help.github.com/articles/creating-a-pull-request/). After creating it, if you include the URL of your Pull Request when you post your question, reviewers will be able to easily see the changes you've made and leave comments on each line of your code with suggestions.

## Project Specific Setup

 1. `cd` into the folder you downloaded.
 1. `bundle install` (or `bundle` for short)
 1. `rails server` (or `rails s` for short)
 1. Navigate to [http://localhost:3000](http://localhost:3000) in Chrome — there's nothing there but the default Rails welcome screen!
 1. **This is a brand new, untouched Rails application.** All we've done is run the command `rails new omnicalc_params` to generate the basic structure of folders and files you see in your editor's sidebar, and we've added the instructions you're reading in this README.

    **You could generate a brand new Rails app yourself right now by doing the same thing:**

    1. Open a terminal window and `cd` to the folder where you store your code.
    1. `rails new your_own_app_name`
    1. `cd your_own_app_name`
    1. `rails s`

    That's it! You'd then see the same welcome screen at [http://localhost:3000](http://localhost:3000), and you would be ready to start building out your Rails app.

## Part I: Flexible Routes

Your goal will be to build a simplified version of Omnicalc.

#### Here is your target for Part 1.

The way it should work is:

 - The square of a particular NUMBER lives at the URL `/flexible/square/:number`
 - The square root of a particular NUMBER lives at the URL `/flexible/square_root/:number`
 - A random number within a range, MIN to MAX, lives at the URL `/flexible/random/:min/:max`
 - The monthly loan payment, given an **annual interest rate in basis points, or hundredths of a percent**, a number of years, and a principal amount, lives at the URL `/flexible/payment/:basis_points/:number_of_years/:principal_value`

For example, if you visit [http://localhost:3000/flexible/square/5](http://localhost:3000/flexible/square/5), you should see something like

> ## Square
>
> The square of 5 is 25.

If you visit [http://localhost:3000/flexible/square_root/8](http://localhost:3000/flexible/square_root/8), you should see something like

> ## Square Root
>
> The square root of 8.0 is 2.83.

If you visit [http://localhost:3000/flexible/random/50/100](http://localhost:3000/flexible/random/50/100), you should see something like

> ## Random Number
>
> A random number between 50 and 100 is 87.

If you visit [http://localhost:3000/flexible/payment/410/30/250000](http://localhost:3000/flexible/payment/34/60/30000), you should see something like

> ## Payment
>
> A 30 year loan of $250000, with an annual interest rate of 4.1%, requires a monthly payment of $1208.00.

**All of these should work no matter what I type into the flexible segments of the path (as long as I type integers).**

Remember:

 - Rails places all user input in the `params` hash.
 - You can use the `params` hash in your actions or your views.
 - Watch the server log to see what the `params` hash contains for any given request.

#### Your task: Build out flexible RCAVs so that all of these (infinitely many) URLs work.

## Part II: Forms

Now, let's build something a little more realistic. We don't type inputs into the address bar; we type into forms!

#### Here is your target for Part 2.

The way it should work is:

 - If you visit the URL [http://localhost:3000/forms/square/new](http://localhost:3000/square/new), you will see a form to enter a number.
   - If you submit that form, you will end up at `/forms/square/results` (with a query string on the end), and the square of the number you entered will be displayed on the page.
 - If you visit the URL [http://localhost:3000/forms/square_root/new](http://localhost:3000/square_root/new), you will see a form to enter a number.
   - If you submit that form, you will end up at `/forms/square_root/results` (with a query string on the end), and the square root of the number you entered will be displayed on the page.
 - If you visit the URL [http://localhost:3000/forms/random/new](http://localhost:3000/random/new), you will see a form to enter two numbers, a minimum and a maximum.
   - If you submit that form, you will end up at `/forms/random/results` (with a query string on the end), and a random number from within the range that you entered will be displayed on the page.
 - If you visit the URL [http://localhost:3000/forms/payment/new](http://localhost:3000/payment/new), you will see a form to enter three numbers, an **annual interest rate in basis points, or hundredths of a percent**, a number of years, and a principal amount.
   - If you submit that form, you will end up at `/forms/payment/results` (with a query string on the end), and the monthly payment for the values that you entered will be displayed on the page.

#### Your task: Implement these features.

## Extra challenges

 - Add a link to each results page to go back and perform a new calculation.
 - Add global navigation to get from calculator to calculator.
 - Add a link to the random number results page to **instantly** calculate a new random number _from within the same range_, without the user having to re-enter the minimum and maximum into the form again.
 - [Bootstrap it](http://getbootstrap.com/components/#panels) to make it look like [the real Omnicalc](http://omnicalc-target.herokuapp.com/). We've already connected `bootstrap.css` and [Font Awesome](http://fontawesome.io/icons/) for you, so you can just start using them.