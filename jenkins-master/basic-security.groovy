#!groovy
 
import jenkins.model.*
import hudson.security.*
 
def instance = Jenkins.getInstance()
def hudsonRealm = new HudsonPrivateSecurityRealm(false)
hudsonRealm.createAccount('admin','chudeptrai123')
instance.setSecurityRealm(hudsonRealm)
 
def strategy = new FullControlOnceLoggedInAuthorizationStrategy()
instance.setAuthorizationStrategy(strategy)
//strategy.setAllowAnonymousRead(true) => uncomment to enable anonymous read (no need authentication dashboard) 
instance.save()


//This script creates a Jenkins user with full admin access
