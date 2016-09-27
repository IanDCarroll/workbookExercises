import web

urls = (
  '/', 'index'
)

app = web.application(urls, globals())

render = web.template.render('templates/')

class Index:
    def GET(self):
        greeting = "A Salutation t'The Globe!"
        return render.index(greeting = greeting)

if __name__ == "__main__":
    app.run()
