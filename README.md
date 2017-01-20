SHA256-Swift
============

Swift framework wrapping CommonCrypto's SHA256 methods.

*This is experimental. Do not use this in a production system.*

Installation instructions
-------------------------

 1. Add the SHA256-Swift project to your existing project either through a workspace or as a subproject.
 1. Link the appropriate framework (either SHA256iOs or SHA256Mac).
 1. Where required, `import SHA256iOs`
 1. In your main project, add the path to the CommonCrypto module directory to your Swift import paths. `${SRCROOT}/SHA256-Swift/CommonCrypto` for example.
 
