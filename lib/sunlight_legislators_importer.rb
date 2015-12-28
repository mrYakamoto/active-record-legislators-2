require 'csv'

module SunlightLegislatorsImporter
  def self.import(filename = File.dirname(__FILE__) + "/../db/data/legislators.csv")
    csv_text = File.read(filename)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      row_hash = row.to_hash
      row_hash = row_hash.each_key do |key|
        row_hash.delete(key) if key == "nickname" || key == "district" || key == "webform" || key == "congress_office" || key == "bioguide_id" || key == "votesmart_id" || key == "fec_id" || key == "govtrack_id" || key == "crp_id" || key == "congresspedia_url" || key == "youtube_url" || key == "facebook_id" || key == "official_rss" || key == "senate_class" || key == "birthdate"
      end
      Legislator.create!(row_hash)
    end
  end
end