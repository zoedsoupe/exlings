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

## Pedagogical Philosophy

exlings follows a proven pedagogical approach inspired by rustlings and ziglings:

- **Small, Broken Programs**: Each exercise is a small program with intentional gaps (marked with ???) that learners must fix
- **Self-Contained Learning**: All information needed to solve an exercise is provided in the exercise's comments
- **Progressive Difficulty**: Exercises build on previous concepts in a carefully planned sequence
- **Learning by Doing**: Students learn through hands-on problem-solving, not passive reading
- **Immediate Feedback**: The exercise runner provides clear, helpful error messages

### Exercise Design Rules

When creating exercises, follow these principles:

1. **Single Focus**: Each exercise teaches ONE main concept clearly
2. **Self-Contained**: Include all necessary information in comments
3. **Clear Examples**: Provide 2-3 worked examples demonstrating the concept
4. **??? Placeholders**: Use ??? to mark where students need to write code
5. **Expected Output**: Show what the correct output should be in comments
6. **Progressive Difficulty**: Build on concepts from previous exercises
7. **No Emojis**: Keep formatting simple and professional
8. **Idiomatic Code**: Demonstrate Elixir best practices

### Topic Progression

exlings follows a carefully structured progression from basics to advanced topics:

#### Levels 1-6: Foundations (Exercises 001-027) - COMPLETED

- **Level 1**: Basics (hello world, variables, IO)
- **Level 2**: Data Types (numbers, atoms, booleans, strings, tuples)
- **Level 3**: Functions (basic functions, anonymous functions, capture syntax, higher-order functions)
- **Level 4**: Pattern Matching (basics, lists, multiple clauses, guards)
- **Level 5**: Control Flow (if/unless, case, cond)
- **Level 6**: Collections (maps, keyword lists, structs)

**Key Learning Outcomes**: Students understand Elixir syntax, basic data types, functions, pattern matching, and simple data structures.

#### Levels 7-12: Functional Programming (Exercises 028-055) - PLANNED

- **Level 7**: Enum Module (map, filter, reduce, each, find, all/any, sort, group_by)
  - 8 exercises covering the most important enumerable operations
  - Foundation for functional programming style

- **Level 8**: Recursion (basic, list patterns, accumulators, tail call optimization)
  - 5 exercises teaching how Elixir works under the hood
  - Essential for understanding functional programming

- **Level 9**: Comprehensions (basic syntax, filters, multiple generators)
  - 3 exercises on syntactic sugar for transforming enumerables
  - More concise alternative to Enum operations

- **Level 10**: Strings & Binaries (String module, interpolation, binaries, charlists)
  - 4 exercises on text processing and binary data
  - Understanding Elixir's string vs binary distinction

- **Level 11**: Range & Stream (ranges, lazy evaluation, stream composition)
  - 3 exercises on memory-efficient data processing
  - Introduction to lazy evaluation

- **Level 12**: Module Organization (nesting, import/alias, require, defp, attributes)
  - 5 exercises on structuring larger programs
  - Best practices for code organization

**Key Learning Outcomes**: Students master functional programming patterns, understand recursion, work efficiently with collections, and organize code professionally.

#### Levels 13-18: Practical Development (Exercises 056-077) - PLANNED

- **Level 13**: IO & File System (IO operations, file read/write, streaming, Path module)
  - 4 exercises on practical file and console operations
  - Real-world data input/output

- **Level 14**: Error Handling (error tuples, raise/rescue, catch/throw, with statement)
  - 5 exercises on robust error handling patterns
  - Elixir's philosophy of "let it crash" vs defensive programming

- **Level 15**: Protocols (understanding, implementing, String.Chars example)
  - 3 exercises on polymorphism in Elixir
  - How to make custom types work with existing functions

- **Level 16**: Behaviours (understanding, implementing, foundation for GenServer)
  - 3 exercises on defining contracts between modules
  - Preparation for OTP concepts (but no processes yet)

- **Level 17**: Sigils (~r, ~s/~w, ~c, custom sigils)
  - 3 exercises on Elixir's special syntax for literals
  - Understanding when and how to use sigils

- **Level 18**: Mix & Testing (project structure, ExUnit basics, assertions, documentation)
  - 4 exercises on professional development workflow
  - Testing best practices and documentation with @doc/@moduledoc

**Key Learning Outcomes**: Students can build real applications, handle errors properly, use advanced language features, and follow professional development practices.

#### Future Topics (Exercises 078+) - NOT YET PLANNED

These advanced topics will be covered after all functional and language fundamentals are mastered:

- **Processes**: spawn, send/receive, process linking, monitoring
- **OTP Basics**: GenServer, Supervisors, Applications
- **Advanced OTP**: Task, Agent, DynamicSupervisor
- **Concurrency Patterns**: ETS, Registry, PubSub
- **Metaprogramming**: Macros, quote/unquote, AST manipulation
- **Advanced Protocols**: Enumerable, Collectable, Inspect
- **NIFs and Ports**: Interfacing with native code
- **Distribution**: Node connections, distributed Elixir

**Rationale**: Concurrency and OTP are complex topics that require solid understanding of Elixir's functional foundation. Introducing them too early would overwhelm learners.

### Proposing New Exercises

Use the issue template at `.github/ISSUE_TEMPLATE/exercise.md` to propose new exercises. Each proposal should include:

- **Topic and Level**: Where it fits in the progression
- **Difficulty**: 1 (easy), 2 (medium), or 3 (hard)
- **Prerequisites**: What students must know first
- **Learning Objectives**: What students will learn (be specific)
- **Key Concepts**: Main ideas covered
- **Exercise Structure**: How you'll teach the concept
- **Hints**: Guidance for solving the exercise
- **References**: Links to official Elixir documentation

New exercises should:

- Fill gaps in the current progression
- Build logically on previous exercises
- Follow the same pedagogical style as existing exercises
- Include clear, self-contained explanations
- Provide helpful examples and expected output

## Adding New Exercises

When adding a new exercise:

1. Create the exercise file in `exercises/` following the naming convention
2. Add the exercise to `lib/exlings/exercises.ex` in the appropriate order
3. Ensure the exercise is properly formatted with `mix format`
4. Test that the exercise can be completed and verified
5. Add a hint if the exercise is particularly challenging
6. Update the README's "What's Covered" section if introducing a new topic

Thank you for contributing to exlings and helping others learn Elixir!
