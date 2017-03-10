if Category.count == 0
  puts 'Creating Categories'

  categories = ['Accounting/Bookkeeping/Tax Services', 'Administrative Services', 'Advertising', 'Advertising Specialties', 'Animal Services', 'Antiques', 'Architects', 'Arts/Crafts/Art', 'Attorneys', 'Automobile Sales', 'Bridal Sales', 'Broker Services', 'Child Care', 'Clothing Stores', 'Computer Sales/Service', 'Consulting Service', 'Contracting Service/Asbestos/Lead Abatement/Mold Remediation', 'Contracting Service/Building Materials', 'Contractor/Environmental Remediation', 'Contracting Service/General', 'Contracting Service/Heating & Air Conditioning', 'Contracting Service/Pavement Marking', 'Contracting Service/Plumbing', 'Contracting Service/Remodeling', 'Contracting Service/Roofing', 'Contracting Service/Snow Removal', 'Contracting Service/Traffic Control', 'Contracting Service/Wholesale Supplies', 'Delicatessens', 'Drafting Services', 'Employment Agencies/Services', 'Financial Services', 'Flags & Flagpoles', 'Flooring', 'Florist', 'Food/Specialty', 'Footwear/Repair', 'Footwear/Retail', 'Framing', 'Furniture', 'Gift Shops', 'Graphic Designs', 'Grocery Store', 'Hair Care Services/Salons', 'Health & Beauty', 'Health & Fitness', 'Health & Fitness/Massage Therapy', 'Health & Fitness/Spa', 'Health & Wellness', 'Health Care Services/Chiropractic', 'Health Care Services/Dental', 'Health Care Services/Medical', 'Health Care Services/Mental Health', 'Health Care Services/Other', 'Health Care Services/Physical Therapy', 'Insurance', 'Interior Design', 'Interpretation/Translation Services', 'Janitorial Services', 'Lodging/Assisted Living', 'Lodging/Short Term/Extended Stay', 'Mailing Services', 'Marketing Services', 'Non-Profit Organizations', 'Photographers', 'Printing/Typesetting/Copy Services', 'Property Management', 'Publishing', 'Real Estate Sales Service', 'Restaurants', 'Service Stations/Wholesale Petroleum', 'Signs', 'Towing Service']

  categories.each do |category|
    Category.find_or_create_by!(name: category)
    print '.'
  end
else
  puts 'Categories Already Created'
end