roles = ['physician', 'assistant', 'client']
5.times do
  doctor = Doctor.create(
    first_name: Faker::TvShows::RuPaul.queen,
      #last_name: Faker::Name.last_name
  )
 
  5.times do 
    patient = Patient.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )

    Appointment.create(
      role: roles.sample,
      doctor_id: doctor.id,
      patient_id: patient.id
    )
  end
end

puts "Data Seeded."