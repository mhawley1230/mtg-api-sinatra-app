require 'json'


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/cards/findByColors', {
  "resourcePath" => "/Cards",
  "summary" => "find by color(s)",
  "nickname" => "cards_find_by_colors_get",
  "responseClass" => "Card",
  "endpoint" => "/cards/findByColors",
  "notes" => "",
  "parameters" => [
    {
      "name" => "color",
      "description" => "",
      "dataType" => "string",
      "paramType" => "query",

      "allowableValues" => "[white, blue, black, green, red, colorless]",

    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/cards/findByName', {
  "resourcePath" => "/Cards",
  "summary" => "Allows users to find cards by name",
  "nickname" => "cards_find_by_name_get",
  "responseClass" => "inline_response_200_4",
  "endpoint" => "/cards/findByName",
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


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/cards', {
  "resourcePath" => "/Cards",
  "summary" => "",
  "nickname" => "cards_get",
  "responseClass" => "Card",
  "endpoint" => "/cards",
  "notes" => "Allow users to get all cards",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/cards/{id}', {
  "resourcePath" => "/Cards",
  "summary" => "",
  "nickname" => "cards_id_get",
  "responseClass" => "inline_response_200_3",
  "endpoint" => "/cards/{id}",
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
