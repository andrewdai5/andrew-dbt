## run_query

The run_query macro provides a convenient way to run queries and fetch their results. It is a wrapper around the statement block, which is more flexible, but also more complicated to use.

## log

The log macro is used to log a line of text to the logs in dbt. We can add the key default=True to also log the same text to the command line interface.

## target

Target contains information about your connection to the warehouse.  The variables accessible within the target variable for all adapters include profile_name, name, schema, type, and threads.  Check out the documentation for adapter specific variables

## execute

The execute variable is a boolean variable that is true when dbt compiles each node of your project. This can be helpful to wrap around a block of text that you want to only run in the execution phase.  Check out the docs linked above for a concrete example and additional context.
