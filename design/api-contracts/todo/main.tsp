import "@typespec/rest";
import "@typespec/openapi3";

@service({
    title: "TodoApi Service",
})
@doc("This is a sample server TodoApi server.")

namespace TodoApiService;
  
using TypeSpec.Http;
using TypeSpec.Rest;
  
using OpenAPI;

@summary("WeatherForecast model")
model WeatherForecast
{
    date?: DateOnly;

    temperatureC?: int32;

    @visibility("read")
    temperatureF?: int32;

    summary?: string | null;
}

model DateOnly
{
    year?: int32;

    month?: int32;

    day?: int32;

    dayOfWeek?: DayOfWeek;

    @visibility("read")
    dayOfYear?: int32;

    @visibility("read")
    dayNumber?: int32;
}

enum DayOfWeek
{
    Monday: 0,
    Tuesday: 1,
    Wednesday: 2,
    Thrusday: 3,
    Friday: 4,
    Saturday: 5,
    Sunday: 6
}

interface WeatherForecastController {
    @route("/WeatherForecast")
    @get GetWeatherForecast(): WeatherForecast[];
}