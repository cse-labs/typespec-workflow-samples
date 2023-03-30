# TypeSpec Workflow Samples

This repository provides samples for using [Microsoft TypeSpec](https://github.com/Microsoft/typespec) with GitHub Actions, Workflows, Pipelines, and CI/CD to accelerate adoption of TypeSpec in GitHub.
TypeSpec is a tool for generating OpenAPI.json specifications from the CADL format. 

## Getting Started

### Directory structure

* [design/api-contracts](/design/api-contracts): Example API TypeSpec contracts used in the workflows.
* [src](/src): Implementations (code) of APIs.
* [.github/workflows](.github/workflows): GitHub Workflow samples.

### Workflows

#### API Contract Verification

It provides a sample workflow that checks an API implementation (in this case ASP.NET core) against the API spec in the `design` folder. If there are any breaking changes the workflow will fail. It also stores the differences between the implementation and the design in GitHub artifacts. To check the breaking changes uses [Oasdiff](https://github.com/Tufin/oasdiff).

The way it retrieves the generated API implementation is by starting the API server and retrieving the `swagger.json` generated by [Swashbuckle](https://learn.microsoft.com/en-us/aspnet/core/tutorials/getting-started-with-swashbuckle?view=aspnetcore-7.0&tabs=visual-studio). Other alternatives would be to generate the OpenApi spec using [Nswag](https://github.com/RicoSuter/NSwag/) either with the same approach (starting the webserver) or with a commandline util (like the [AspNetCoreToOpenApi](https://github.com/RicoSuter/NSwag/wiki/AspNetCoreToOpenApiCommand) command).

#### API OpenApi Update

It provides a sample workflow about how to compile and push the generated openapi.json spec. A useful scenario for this workflow is when we are serving static api specs in the API implementation, or when we want to trigger other utilities to generate SDKs, publish specs, etc.

## Contributing

Contributions are welcome! Please see our [Contributing Guidelines](CONTRIBUTING.md) for more information.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
