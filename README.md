# elm-aws-sdk

All AWS services have service defintion files, that describe all the endpoints they
expose and the data models that can be passed over those endpoints. This is conceptually
similar to something like a Swagger or OpenAPI file, but in a different format that is
only used by AWS.

Each service definition file is transformed into Elm code implementing stubs for all
the endpoints. This enables Elm code to make HTTP calls to AWS services.
