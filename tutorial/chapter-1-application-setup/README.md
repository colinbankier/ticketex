# Application Setup
## Clone the Phoenix repo
`git clone https://github.com/phoenixframework/phoenix.git && cd phoenix && git checkout v0.8.0 && mix do deps.get, compile`
## Create a new Phoenix application
`mix phoenix.new my_app /path/to/scaffold/my_app`

## First Steps
### Create first test
Add hound to dependencies:
`{ :hound, "~> 0.6.0" }`

Only start hound in test mode:
```
  def application do
    [mod: {Ticketex, []},
     applications: app_list(Mix.env) ]
  end

  defp app_list(:test), do: [:hound | app_list]
  defp app_list(_), do: [:phoenix, :cowboy, :logger]
```

`config :hound, driver: "phantomjs"`

create `test/integration/creating_projects.exs`

start phantomjs
`phantomjs --webdriver=8910`
`mix test`
** (RuntimeError) Unable to find element with name 'new project'

set ProjectsController in router and create controller




