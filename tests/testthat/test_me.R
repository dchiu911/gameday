# Check case ignore
test_that("case is ignored", {
	expect_equal(gday("canucks"), gday("CANUCKS"))
})

# Check logical return
test_that("always returns logical", {
	expect_is(gday("canucks"), "logical")
})

# Checking for city/team name correspondence
test_that("asking for the city works just as well", {
	expect_equal(gday("canucks"), gday("Vancouver"))
})

# Checking for NULL teams
test_that("Seattle does not have a NHL team", {
	expect_false(gday(team="Seattle"))
})

# Checking date for TRUE case
test_that("Vancouver Canucks had a game against Nashville Predators on 2014-11-02", {
	expect_true(gday(team = "canucks",   date = "2014-11-02"))
	expect_true(gday(team = "predators", date = "2014-11-02"))
})

# Checking date for FALSE case
test_that("New York Rangers did not have a game on 2014-11-12", {
	expect_false(gday(team = "rangers",   date = "2014-11-12"))
})

# Checking check_date for TRUE case
test_that("Buffalo Sabres played on 2014-11-02", {
	expect_true(gday(team = "sabres", date = "2014-11-02"))
})

# Checking check_date for FALSE case
test_that("Buffalo Sabres did not play on 2014-11-03", {
	expect_false(gday(team = "sabres", date = "2014-11-03"))
})

# Checking check_date for error
test_that("Buffalo Sabres can't have played on invalid dates", {
	expect_error(gday(team = "sabres",   date = "204-111-02"))
	expect_error(gday(team = "sabres",   date = "today"))
})

# Check failure when date is invalid
test_that("Can't check scores for invalid date", {
	expect_error(scores("today"))
	expect_error(scores("201-01-01"))
})
