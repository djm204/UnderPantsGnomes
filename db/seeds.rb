# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


###Create Provinces
Province.create(name: 'Manitoba',               gst: 0.05 , pst: 0.08, hst: 0.0)
Province.create(name: 'Alberta',                gst: 0.05 , pst: 0.0, hst: 0.0)
Province.create(name: 'British Columbia',       gst: 0.05, pst: 0.07, hst: 0.0)
Province.create(name: 'New Brunswick',          gst: 0.0, pst: 0.0, hst: 0.13)
Province.create(name: 'Nfld. & Labrador',       gst: 0.0, pst: 0.0, hst: 0.13)
Province.create(name: 'North West Territories', gst: 0.05, pst: 0.0, hst: 0.0)
Province.create(name: 'Nova Scotia',            gst: 0.0, pst: 0.0, hst: 0.15)
Province.create(name: 'Nunavut',                gst: 0.05, pst: 0.0, hst: 0.0)
Province.create(name: 'Ontario',                gst: 0.0, pst: 0.0, hst: 0.13)
Province.create(name: 'Prince Edward Island',   gst: 0.0, pst: 0.0, hst: 0.14)
Province.create(name: 'Quebec',                 gst: 0.0, pst: 0.0, hst: 0.014975)
Province.create(name: 'Saskatchewan',           gst: 0.05, pst: 0.05, hst: 0.0)
Province.create(name: 'Yukon',                  gst: 0.5, pst: 0.0, hst: 0.0)

### Create default categories
Category.create(name: 'Briefs',     description: 'Brief-style underwear')
Category.create(name: 'Boxers',     description: 'Boxer-style underwear')
Category.create(name: 'Taboo',      description: 'Taboo underwear')
Category.create(name: 'Religious',  description: 'All kinds of religious under garments')


### Create default Products
Product.create(name: 'Tighty Whiteys',  description: 'Standard briefs', price: 2.00, image_name: 'tighties.jpg', stock_quantity: 10, category_id: 1)
Product.create(name: 'Black Boxers',  description: 'Black Boxer Shorts', price: 3.00, image_name: 'black_boxers.jpg', stock_quantity: 10, category_id: 2)





