# Contributing

By reading this document, you have already entered the Elite Hall
of exlings Maintenance!

## The exlings Audience

exlings is intended for programmers of all experience levels. No
specific language knowledge is expected. Anyone who can install
Elixir (>= 1.14.0), setup a copy of exlings, and knows common
language building blocks (if/then/else, loops, and functions)
is ready for exlings.

exlings exercises are self-contained. If you can't solve an
exercise from the information you've gleaned so far from
exlings, then the exercise probably needs some additional work.
Please file an issue!

If an example doesn't match a description or if something is
unclear, please file an issue!

## Spelling/Grammar

If you see any typos, please file an issue...or make a pull
request!

No mistake is too small. The exlings must be perfect. :-)

## Ideas

If you have ideas for new lessons or a way exlings could be
improved, don't hesitate to file an issue.

Feel free to submit new exercises but please understand that they
may be heavily edited or rejected entirely if we feel they don't
fit for one reason or another.

## Platforms and Elixir Versions

Because Elixir runs on the BEAM (Erlang VM), exlings should work
wherever Elixir does (Linux, macOS, Windows, BSD, etc.).

Since exlings is an Elixir language learning resource, it targets
at least Elixir 1.14.0 and above to ensure compatibility with modern Elixir
features while maintaining broad accessibility.

If you run into an error in exlings caused by breaking changes
in newer Elixir versions, that's a bug in exlings. Please file
an issue...or make a pull request!

## Pull Request Workflow

exlings uses the standard GitHub workflow:

- Fork this repository
- Create a branch from `main` for your work:
  `git switch -b my-branch`
- Make changes, commit them
- When your changes are ready for review, push your branch:
  `git push origin my-branch`
- Create a pull request from your branch to `zoedsoupe/exlings:main`
- Your faithful exlings maintainers will take a look at your
  request as soon as possible
- Once the changes are reviewed, your request will be merged and
  eternal exlings contributor glory is yours!

## Testing Your Changes

Before submitting a pull request, make sure to test your changes:

```sh
mix exlings <number-of-your-exercice>
```

## Licence

If you submit your contribution to the repository/project,
you agree that your contribution will be licensed under
the license of this repository/this project.
Please note, it does not change your rights to use your own
contribution for any other purpose.

## Exercise Structure

Each exercise should follow this structure:

1. **Clear Learning Objective**: What concept is being taught?
2. **Self-Contained**: All information needed should be in the exercise
3. **Commented Instructions**: Use comments to guide the learner
4. **Incremental Difficulty**: Build on previous exercises
5. **Idiomatic Elixir**: Demonstrate best practices

Example exercise template:

```elixir
# Exercise XXX: [Concept Name]
#
# Brief description of what this exercise teaches.
#
# Key concepts:
# - Concept 1
# - Concept 2
#
# Your task: [clear instruction]

defmodule ExerciseXXX do
  # TODO: Fix or complete the code below

  def example_function do
    # ...
  end
end

# Tests to verify the solution
ExUnit.start()

defmodule ExerciseXXXTest do
  use ExUnit.Case

  test "verifies the concept" do
    # ...
  end
end
```

## Adding New Exercises

When adding a new exercise:

1. Create the exercise file in `exercises/` following the naming convention
2. Add the exercise to `lib/exlings/exercises.ex` in the appropriate order
3. Ensure the exercise is properly formatted with `mix format`
4. Test that the exercise can be completed and verified
5. Add a hint if the exercise is particularly challenging
6. Update the README's "What's Covered" section if introducing a new topic

Thank you for contributing to exlings and helping others learn Elixir!
