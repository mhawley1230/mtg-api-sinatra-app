require 'json'


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/tournaments/findByName', {
  "resourcePath" => "/Tournaments",
  "summary" => "Allows users to find events by name of event",
  "nickname" => "tournaments_find_by_name_get",
  "responseClass" => "Tournament",
  "endpoint" => "/tournaments/findByName",
  "notes" => "",
  "parameters" => [
    {
      "name" => "name",
      "description" => "",
      "dataType" => "string",
      "paramType" => "query",

      "allowableValues" => "",

    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/tournaments', {
  "resourcePath" => "/Tournaments",
  "summary" => "",
  "nickname" => "tournaments_get",
  "responseClass" => "Tournament",
  "endpoint" => "/tournaments",
  "notes" => "Allow users to get events",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/tournaments/{id}', {
  "resourcePath" => "/Tournaments",
  "summary" => "",
  "nickname" => "tournaments_id_get",
  "responseClass" => "inline_response_200",
  "endpoint" => "/tournaments/{id}",
  "notes" => "Allows users to search for an event by id",
  "parameters" => [
    {
      "name" => "id",
      "description" => "event id",
      "dataType" => "int",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/mtg-tournaments/1.0.0/tournaments', {
  "resourcePath" => "/Tournaments",
  "summary" => "Allows users to post events with top 8 decklists and card info",
  "nickname" => "tournaments_post",
  "responseClass" => "Tournament",
  "endpoint" => "/tournaments",
  "notes" => "Allows users to post events data",
  "parameters" => [
    {
      "name" => "body",
      "description" => "event description",
      "dataType" => "array[name]",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end
