require 'json'


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/decks/findByName', {
  "resourcePath" => "/Decks",
  "summary" => "Allows users to find decks by name",
  "nickname" => "decks_find_by_name_get",
  "responseClass" => "inline_response_200_2",
  "endpoint" => "/decks/findByName",
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


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/decks/findByPlacing', {
  "resourcePath" => "/Decks",
  "summary" => "Allows users to find decks by event placing",
  "nickname" => "decks_find_by_placing_get",
  "responseClass" => "inline_response_200_2",
  "endpoint" => "/decks/findByPlacing",
  "notes" => "",
  "parameters" => [
    {
      "name" => "placing",
      "description" => "",
      "dataType" => "int",
      "paramType" => "query",

      "allowableValues" => "",

    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/decks/findByPlayer', {
  "resourcePath" => "/Decks",
  "summary" => "Allows users to find decks by player",
  "nickname" => "decks_find_by_player_get",
  "responseClass" => "inline_response_200_2",
  "endpoint" => "/decks/findByPlayer",
  "notes" => "",
  "parameters" => [
    {
      "name" => "player",
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


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/decks', {
  "resourcePath" => "/Decks",
  "summary" => "",
  "nickname" => "decks_get",
  "responseClass" => "Deck",
  "endpoint" => "/decks",
  "notes" => "Allow users to get decks",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/mtg-tournaments/1.0.0/decks/{id}', {
  "resourcePath" => "/Decks",
  "summary" => "",
  "nickname" => "decks_id_get",
  "responseClass" => "inline_response_200_1",
  "endpoint" => "/decks/{id}",
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
