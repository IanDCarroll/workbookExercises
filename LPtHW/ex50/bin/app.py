import web

urls = (
  '/hello', 'Index'
)

app = web.application(urls, globals())

render = web.template.render('templates/')

class Index:
    def GET(self):
        form = web.input(name="Nobody")
        greeting = "A Salutation t'The %s!" % form.name
        return render.index(greeting = greeting)

if __name__ == "__main__":
    app.run()
