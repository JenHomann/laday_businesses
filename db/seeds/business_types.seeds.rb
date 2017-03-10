if BusinessType.count == 0
  puts 'Creating Business Types'

  business_types = ['Accounting/Bookkeeping/Tax Services', 'Administrative Services', 'Advertising', 'Advertising Specialties', 'Animal Services', 'Antiques', 'Architects', 'Arts/Crafts/Art', 'Attorneys', 'Automobile Sales', 'Bridal Sales', 'Broker Services', 'Child Care', 'Clothing Stores', 'Computer Sales/Service', 'Consulting Service', 'Contracting Service/Asbestos/Lead Abatement/Mold Remediation', 'Contracting Service/Building Materials', 'Contractor/Environmental Remediation', 'Contracting Service/General', 'Contracting Service/Heating & Air Conditioning', 'Contracting Service/Pavement Marking', 'Contracting Service/Plumbing', 'Contracting Service/Remodeling', 'Contracting Service/Roofing', 'Contracting Service/Snow Removal', 'Contracting Service/Traffic Control', 'Contracting Service/Wholesale Supplies', 'Delicatessens', 'Drafting Services', 'Employment Agencies/Services', 'Financial Services', 'Flags & Flagpoles', 'Flooring', 'Florist', 'Food/Specialty', 'Footwear/Repair', 'Footwear/Retail', 'Framing', 'Furniture', 'Gift Shops', 'Graphic Designs', 'Grocery Store', 'Hair Care Services/Salons', 'Health & Beauty', 'Health & Fitness', 'Health & Fitness/Massage Therapy', 'Health & Fitness/Spa', 'Health & Wellness', 'Health Care Services/Chiropractic', 'Health Care Services/Dental', 'Health Care Services/Medical', 'Health Care Services/Mental Health', 'Health Care Services/Other', 'Health Care Services/Physical Therapy', 'Insurance', 'Interior Design', 'Interpretation/Translation Services', 'Janitorial Services', 'Lodging/Assisted Living', 'Lodging/Short Term/Extended Stay', 'Mailing Services', 'Marketing Services', 'Non-Profit Organizations', 'Photographers', 'Printing/Typesetting/Copy Services', 'Property Management', 'Publishing', 'Real Estate Sales Service', 'Restaurants', 'Service Stations/Wholesale Petroleum', 'Signs', 'Towing Service']

  business_types.each do |business_type|
    BusinessType.find_or_create_by!(name: business_type)
    print '.'
  end
else
  puts 'Business Types Already Created'
end