


App = Ember.Application.create()

# Controllers

App.entries = Ember.ArrayController.create
  content: [
    Ember.Object.create(id: 1, body: 'hoge'),
    Ember.Object.create(id: 2, body: 'moge'),
    Ember.Object.create(id: 3, body: 'koge'),
  ]


# Views
App.ApplicationView = Ember.View.extend()

App.EntriesView = Ember.View.extend
  templateName: 'entries',
  entriesBinding: 'App.entries.content'

App.EntryView = Ember.View.extend
  templateName: 'entry',
  alert: (->
    alert(this.get('content').get('body'))
  ),
  content: null

# Setup

