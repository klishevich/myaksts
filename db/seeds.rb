# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
# puts 'ROLES'
# YAML.load(ENV['ROLES']).each do |role|
#   Role.find_or_create_by_name({ :name => role }, :without_protection => true)
#   puts 'role: ' << role
# end
# puts 'DEFAULT USERS'
# user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
# puts 'user: ' << user.name
# user.add_role :admin
puts 'ScienceField creation'
ScienceField.create([
  { name: "Mathematics" },
  { name: "Physics" },
  { name: "Chemistry" },
  { name: "EarthScience_Earth_Atmosphere_Marine_Astronomy" },
  { name: "Life_Science" },
  { name: "Agriculture_Fishery_Food" },
  { name: "Health_Science" },
  { name: "Machinery" },
  { name: "Materials" },
  { name: "Chemical_Engineering" },
  { name: "Electricity_Electronics" },
  { name: "Information_Communication" },
  { name: "Energy_Resources" },
  { name: "Nuclear_Power" },
  { name: "Brain_Sciences" },
  { name: "Cognitive_Emotion_Sensibility_Sciences" },
  { name: "Science_Technology_Society" },
  { name: "Environment" },  
  { name: "Construction_Transportation" }
])

#1
field = ScienceField.where(name: "Mathematics").first
field.science_specific_fields.create([
  { name: "Algebra" },
  { name: "Analysis" },
  { name: "Topology" },  
  { name: "Geometry" },  
  { name: "Applied Mathematics" },  
  { name: "Discrete/Information Mathematics" },  
  { name: "Parametric inference/calculation" },  
  { name: "Models/Data analysis" },  
  { name: "Applied Statistics" },  
  { name: "Probability/Stochastic Process" },  
  { name: "Other Mathematics" }	
])

#2
field = ScienceField.where(name: "Physics").first
field.science_specific_fields.create([
  { name: "Particle Physics/Field Theory" },
  { name: "Statistical Physics" },
  { name: "Nuclear Physics" },  
  { name: "Fluid/Plasma" },  
  { name: "Optics" },  
  { name: "Condensed Matter Physics" },  
  { name: "Atomic/Molecular Physics" },  
  { name: "Astrophysics" },  
  { name: "Interdisciplinary Physics" },  
  { name: "Other Physics" }
])

#3
field = ScienceField.where(name: "Chemistry").first
field.science_specific_fields.create([
  { name: "Physical Chemistry" },
  { name: "Organic Chemistry" },
  { name: "Inorganic Chemistry" },  
  { name: "Analytical Chemistry" },  
  { name: "Polymer Chemistry" },  
  { name: "Biochemistry" },  
  { name: "Photochemistry" },  
  { name: "Electrochemistry" },  
  { name: "Nanochemistry" },  
  { name: "Interdisciplinary Chemistry" },  
  { name: "Other Chemistry" }
])

#4
field = ScienceField.where(name: "EarthScience_Earth_Atmosphere_Marine_Astronomy").first
field.science_specific_fields.create([
  { name: "Geological Science" },
  { name: "Geophysics" },
  { name: "Geochemistry" },  
  { name: "Atmospheric Science" },  
  { name: "Meteorological science" },  
  { name: "Climatology" },  
  { name: "Nature Disaster Analysis/Forecast" },  
  { name: "Marine Sciences" },  
  { name: "Marine Resources" },  
  { name: "Marine Life Sciences and Resources" },  
  { name: "Polar Science" },	
  { name: "Astronomy" },	
  { name: "Aerospace Science" },	
  { name: "Astro-Space Observation" },	
  { name: "Other Earth Science" }
])

#5
field = ScienceField.where(name: "Life_Science").first
field.science_specific_fields.create([
  { name: "Molecular Cell Biology" },
  { name: "Genetics/Genetic Engineering" },
  { name: "Developmental/Neuronal Biology" },  
  { name: "Immunology/Physiology" },  
  { name: "Phylogenetics/Ecology/Environmentalbiology" },  
  { name: "Biochemistry/Structural Biology" },  
  { name: "Convergence Biotechnology" },  
  { name: "Bioengineering" },  
  { name: "Industrial Biotechnology" },  
  { name: "Bioprocess/Facilities" },  
  { name: "Biological Safety" },	
  { name: "Other Life Science" }
])

#6
field = ScienceField.where(name: "Agriculture_Fishery_Food").first
field.science_specific_fields.create([
  { name: "Science of Food and Crops" },
  { name: "Horticulture Science" },
  { name: "Agricultural Biology" },  
  { name: "Agricultural Chemistry" },  
  { name: "Environment of Agricultural Ecology" },  
  { name: "Science of Animal Resources" },  
  { name: "Veterinary Science" },  
  { name: "Agricultural Engineering" },  
  { name: "Agricultural Civil Engineering" },  
  { name: "Forest Resources" },  
  { name: "Science of Landscape Architecture" },	
  { name: "Forest Products" },	
  { name: "Aquaculture" },	
  { name: "Fisheries Resource Management/Fishing Environment" },	
  { name: "Fishery Product/Processing" },	
  { name: "Agricultural, fisheries, livestock goods sanitation/quality control" },	
  { name: "Food Science" },	
  { name: "Food and Nutrition Science" },	
  { name: "Food Cooking/Food Service/Improvement" },	
  { name: "Agriculture, Food and Fishery Management/Information" },	
  { name: "Other Agriculture, Fishery and Food" }
])

#7
field = ScienceField.where(name: "Health_Science").first
field.science_specific_fields.create([
  { name: "Biomedical Sciences" },
  { name: "Clinical Medicine" },
  { name: "Development of Pharmaceutical" },  
  { name: "Medical Device for Therapy/Diagnosis" },  
  { name: "Medical Devices for Reconstruction/Rehabilitation/Well-being" },  
  { name: "Medical Informatics/System" },  
  { name: "Traditional Korean Medical Science" },  
  { name: "Health Science" },  
  { name: "Nursing Science" },  
  { name: "Dental Science" },  
  { name: "Food Safety Management" },	
  { name: "Nutrition Management" },	
  { name: "Safety Management of Drug" },	
  { name: "Safety Management of Medical Devices" },	
  { name: "Toxicology/Safety Management Base Technology" },	
  { name: "Other Health Sciences" }
])

#8
field = ScienceField.where(name: "Machinery").first
field.science_specific_fields.create([
  { name: "Measurement Standards/Test Evaluation" },
  { name: "Manufacturing Platform" },
  { name: "Machine Element" },  
  { name: "Precision Machines" },  
  { name: "Robot/Automated Machinery" },  
  { name: "Nano/Micro Machine System" },  
  { name: "Energy/Environment Machine System" },  
  { name: "Industrial/General Machinery" },  
  { name: "Vehicle/Rolling Stock" },  
  { name: "Naval Architecture/Ocean Engineering" },  
  { name: "Aircraft System" },	
  { name: "Space Launch Vehicle" },	
  { name: "Satellite System" },	
  { name: "Disaster Prevention and Safety Machines" },	
  { name: "National Defense Platform" },	
  { name: "Other Machinery" }
])

#9
field = ScienceField.where(name: "Materials").first
field.science_specific_fields.create([
  { name: "Metallic Materials" },
  { name: "Ceramic Materials" },
  { name: "Polymeric Materials" },  
  { name: "Casting/Welding/Joining" },  
  { name: "Plastic Deformation Process/Powders" },  
  { name: "Thermal/Surface Treatment" },  
  { name: "Analysis/Characteristics Evaluation technology" },  
  { name: "Military Materials" },  
  { name: "Other Materials" }
])

#10
field = ScienceField.where(name: "Chemical_Engineering").first
field.science_specific_fields.create([
  { name: "Chemical Process" },
  { name: "Nano-chemical Process" },
  { name: "Polymeric Materials and Process" },  
  { name: "Biochemical Process" },  
  { name: "Fine-chemical Process" },  
  { name: "General Chemical Products" },  
  { name: "Fiber Production" },  
  { name: "Dyeing and Finishing" },  
  { name: "Textile Goods" },  
  { name: "Safety Technology for Chemical Process" },  
  { name: "CBR Weapon/Fire Power Ammunition" },	
  { name: "Other Chemical Engineering" }
])

#11
field = ScienceField.where(name: "Electricity_Electronics").first
field.science_specific_fields.create([
  { name: "Optical Instrument" },
  { name: "Semiconductor Equipment" },
  { name: "Heavy Electric Apparatus" },  
  { name: "Semiconductor Device/System" },  
  { name: "Electric and Electronic Components" },  
  { name: "Home/Electric Appliances" },  
  { name: "Measuring Instrument and Equipment" },  
  { name: "Audio/Video Equipment" },  
  { name: "Cell/Battery" },  
  { name: "Display" },  
  { name: "Weapon/Ordnance Sensor and Control" },	
  { name: "Other Electricity/Electronics" }   
])

#12
field = ScienceField.where(name: "Information_Communication").first
field.science_specific_fields.create([
  { name: "Information Processing Theory" },
  { name: "Software" },
  { name: "Information Security" },  
  { name: "Broadband Convergence Network" },  
  { name: "Satellite/Radio" },  
  { name: "Wireless/Mobile Communication" },  
  { name: "Digital Broadcasting" },  
  { name: "Home Network" },  
  { name: "RFID/USN" },  
  { name: "Ubiquitous Computing" },  
  { name: "IT module/device" },	
  { name: "ITS/Telematics" },	
  { name: "Disaster Information Management" },	
  { name: "National Defense Information Telecommunication" },	
  { name: "Other Information/Communication" }
])

#13
field = ScienceField.where(name: "Energy_Resources").first
field.science_specific_fields.create([
  { name: "Greenhouse Gas Treatment" },
  { name: "Resources Exploration/Development/Utilization" },
  { name: "Hydro/Thermal Electric Power Generation" },  
  { name: "Electric Power Transmission/Distribution system" },  
  { name: "IT(Intelligent Electric Power System)" },  
  { name: "New and Renewable Energy" },  
  { name: "Other Energy/Resource" }
])

#14
field = ScienceField.where(name: "Nuclear_Power").first
field.science_specific_fields.create([
  { name: "Nuclear Reactor Core" },
  { name: "NSSS/Primary components" },
  { name: "Nuclear Instrumentation/Control" },  
  { name: "Nuclear Safety" },  
  { name: "Nuclear Fuel/Material" },  
  { name: "Nuclear Fuel Cycle/Radioactive Waste Management" },  
  { name: "Radiation Technology" },  
  { name: "Nuclear Basic Science/Advanced Technology" },  
  { name: "Nuclear System Construction and Operation" },  
  { name: "Nuclear Fusion" },  
  { name: "Other Nuclear Power" }	
])

#15
field = ScienceField.where(name: "Brain_Sciences").first
field.science_specific_fields.create([
  { name: "Molecular and Celluar Neuroscience" },
  { name: "Cognitive Neuroscience" },
  { name: "Medical and Pharmacological Research for Brain" },  
  { name: "Neuroengineering" },  
  { name: "Other Brain Sciences" }	
])

#16
field = ScienceField.where(name: "Cognitive_Emotion_Sensibility_Sciences").first
field.science_specific_fields.create([
  { name: "Cognitive Science" },
  { name: "Science of Emotion and Sensibility" },
  { name: "Other Cognitive/Emotion and Sensibility Sciences" }
])

#17
field = ScienceField.where(name: "Science_Technology_Society").first
field.science_specific_fields.create([
  { name: "History of Science and Technology" },
  { name: "Philosophy of Science and Technology" },
  { name: "Science and Technology Policy/Society" },  
  { name: "Bioethics/Medical Ethics" },  
  { name: "Other Science, Technology and Society" }
])

#18
field = ScienceField.where(name: "Environment").first
field.science_specific_fields.create([
  { name: "Air Quality Management" },
  { name: "Water Management" },
  { name: "Soil/Groundwater Remediation/Management" },  
  { name: "Ecology Restoration/Management" },  
  { name: "Noise/Vibration Control and Management" },  
  { name: "Marine Environments" },  
  { name: "Waste Management/Resource Recycling" },  
  { name: "Risk Assessment/Risk Management" },  
  { name: "Environmental Health" },  
  { name: "Environmental Prediction/Monitoring/Evaluation" },  
  { name: "Environmentally Friendly Materials/Products" },	
  { name: "Environmentally Friendly Process" },	
  { name: "Equipments/Facilities for Environmental Analysis and measurement" },	
  { name: "Cleaner Production/Clean Facilities" },	
  { name: "Industrial Environment" },	
  { name: "Other Environment" },	
])

#19
field = ScienceField.where(name: "Construction_Transportation").first
field.science_specific_fields.create([
  { name: "National Land Policy/Planning" },
  { name: "National Land Spatial Development Technology" },
  { name: "Design/Analysis for Facilities" },  
  { name: "Construction Engineering/Materials/Management" },  
  { name: "Highway Transportation Technology" },  
  { name: "Railway Transportation Technology" },  
  { name: "Air Transportation Technology" },  
  { name: "Maritime Safety/Transportation Technology" },  
  { name: "Water Engineering System" },  
  { name: "Logistics Technology" },  
  { name: "Infra-structure Inspection/Evaluation" },	
  { name: "Construction Environment/Equipment" },	
  { name: "Other Construction/Transportation" }	
])


























