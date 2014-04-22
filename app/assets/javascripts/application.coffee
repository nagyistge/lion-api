#= require extensions
#= require jquery
#= require vendor/modernizr
#= require foundation/foundation
#= require foundation.dropdown
#= require pace
#= require notify
#= require sticky-kit/jquery.sticky-kit
#= require handlebars
#= require pusher
#= require moment
#= require ember/ember
#= require ember-data/ember-data
#= require ember-pusher
#= require ember-simple-auth
#= require app
#= require_self
#= require lion
#= require omniauth_authenticator

window.Lion = LionApplication.create(
  LOG_ACTIVE_GENERATION: true
  LOG_MODULE_RESOLVER: true
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_VIEW_LOOKUPS: true
)

Lion.deferReadiness()

Ember.SimpleAuth.Session.reopen
  login: ->
    Lion.lookup('controller:currentUser').sync()

  logout: ->
    Lion.lookup('controller:currentUser').logout()

Ember.Application.initializer
  name: 'authentication'

  initialize: (container, application) ->
    container.register('authenticator:omniauth', Lion.OmniauthAuthenticator)

    Ember.SimpleAuth.setup(container, application, {
      authorizerFactory: 'authorizer:oauth2-bearer'
      routeAfterAuthentication: 'tasks'
    })
