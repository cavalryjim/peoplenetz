# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
industries = Industry.create([{ name: 'Agriculture', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Accounting', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Manufacturing', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Banking', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Financial Services', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Biotechnology', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Pharmaceuticals', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Consulting', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Retail & Wholesale', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Solutions Audit', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Risk Management', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Compliance', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Software Development', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Defense', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Academia', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Technology', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Energy', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Telecommunications', description: 'Industry description', pnetz_solution: 'Our solution' },
                              { name: 'Transportation', description: 'Industry description', pnetz_solution: 'Our solution' } ])
              
libraries = Library.create([  { name: 'Basel II/III', description: 'Library description' },
                              { name: 'Solvency II', description: 'Library description' },
                              { name: 'ISO 27000', description: 'Library description' },
                              { name: 'ISO 14000', description: 'Library description' },
                              { name: 'ISO 31000', description: 'Library description' },
                              { name: 'COSO ERM', description: 'Library description' },
                              { name: 'COBIT 4/5', description: 'Library description' },
                              { name: 'FAS-133', description: 'Library description' },
                              { name: 'APRA', description: 'Library description' },
                              { name: 'AML/CT', description: 'Library description' },
                              { name: 'FATCA', description: 'Library description' },
                              { name: 'SSAE-16', description: 'Library description' } ])
                              
solutions = Solution.create([ { name: 'Audit', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Risk Management', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Compliance', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Software Development', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Defense', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Academia', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Technology', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Energy', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Telecommunications', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Transportation', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Workshop Automation', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Six Sigma', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Process Improvement', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Product Design and Development', description: 'Solution description', pnetz_solution: 'Our solution' },
                              { name: 'Stakeholder Management', description: 'Solution description', pnetz_solution: 'Our solution' } ])



