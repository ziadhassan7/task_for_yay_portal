
# Process

1. Confirm details to avoid misconceptions.
2. Imagine and sketch the whole application and what technologies I would use.
3. Start by the most basic implementation.
4. Implement advanced details.
5. Handle edge cases.
6. Heavy testing.

--------------------------------------------------------------------------
# Project Structure

1) **Core:** All elements shared amongst the entire application. 
2) **Features:** It contains the main features of the application, which contains
	1) **Presentation:** (Views , State Management , Controllers) 
	2) **Data:** (Local Data source , Model)
3) **Assets:** Locals - en , ar -

_____________________________________________
# Decisions

## 1) Localization Package

I used the Flutter package `eazy_localization` as I find it the easiest to use, because of its straightforward implementation and clean code.

**Flows of this approach:** You can't mark the widgets as `const` , which was counterproductive.
## 2) Local Storage (SQLite vs Hive)

Why did I choose Hive over SQLite?

SQLite is most suitable for big data sets and because we only want to store one user, it is more preferable to use Hive.

It would be both faster and easier to code!

--------------------------------------------------------------------------

# State Management (BloC)

I was asked to specifically use BloC which I'm really comfortable using. I used it to show the loading state of the submit button.

Submit Button (Idle State) => User Tap => Load user input into local storage (Loading State) => When successfully fetched (Success State) => Move to the next page.

And if an error occurred, you should show a widget stating the error and where it happened.

--------------------------------------------------------------------------

# Edge Cases

1. User didn't enter one of the required fields.
2. Location permission not granted.
