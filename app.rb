require 'rack'

class App
  def call(env)
    [200, {"Content-Type" => "text/html"}, [ html ] ]
  end

  private

  def html
    [
      "<!DOCTYPE html><html>",
      head,
      body,
      "</html>"
    ].join
  end

  def head
    <<-HTML
      <head>
        <title>Rack App</title>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <style type="text/css">
        </style>
      </head>
    HTML
  end

  def body
    <<-HTML
      <body>
        <div class="container-fluid">
          <div class="row">
           <div class="col-md-4">
           <h1>YO</h1>
          </div>
        </div>
      </div>
    </body>
    HTML
  end

end
