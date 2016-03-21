# Phone Number

## Number:
Remove formatting from a phone number.

Returns "0000000000" if phone number is not valid
(10 digits or "1" followed by 10 digits)

### Examples:

iex> Phone.number("123-456-7890")
"1234567890"

iex> Phone.number("+1 (303) 555-1212")
"3035551212"

iex> Phone.number("867.5309")
"0000000000"

## Area Code:
Extract the area code from a phone number

Returns the first three digits from a phone number,
ignoring long distance indicator

### Examples:

iex> Phone.area_code("123-456-7890")
"123"

iex> Phone.area_code("+1 (303) 555-1212")
"303"

iex> Phone.area_code("867.5309")
"000"

## Pretty:

Pretty print a phone number

Wraps the area code in parentheses and separates
exchange and subscriber number with a dash.

### Examples:

iex> Phone.pretty("123-456-7890")
"(123) 456-7890"

iex> Phone.pretty("+1 (303) 555-1212")
"(303) 555-1212"

iex> Phone.pretty("867.5309")
"(000) 000-0000"
__________________________________________________________________________
Write a program that cleans up user-entered phone numbers so that they can be sent SMS messages.

The rules are as follows:

- If the phone number is less than 10 digits assume that it is bad
  number
- If the phone number is 10 digits assume that it is good
- If the phone number is 11 digits and the first number is 1, trim the 1
  and use the last 10 digits
- If the phone number is 11 digits and the first number is not 1, then
  it is a bad number
- If the phone number is more than 11 digits assume that it is a bad
  number

We've provided tests, now make them pass.

Hint: Only make one test pass at a time. Disable the others, then flip
each on in turn after you get the current failing one to pass.

## Running tests

Execute the tests with:

```bash
$ elixir bob_test.exs
```

(Replace `bob_test.exs` with the name of the test file.)


### Pending tests

In the test suites, all but the first test have been skipped.

Once you get a test passing, you can unskip the next one by
commenting out the relevant `@tag :pending` with a `#` symbol.

For example:

```elixir
# @tag :pending
test "shouting" do
  assert Bob.hey("WATCH OUT!") == "Whoa, chill out!"
end
```

Or, you can enable all the tests by commenting out the
`ExUnit.configure` line in the test suite.

```elixir
# ExUnit.configure exclude: :pending, trace: true
```

For more detailed information about the Elixir track, please
see the [help page](http://exercism.io/languages/elixir).

## Source

Event Manager by JumpstartLab [view source](http://tutorials.jumpstartlab.com/projects/eventmanager.html)
