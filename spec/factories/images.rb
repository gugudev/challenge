include ActionDispatch::TestProcess
FactoryBot.define do
  factory :image do
    src { fixture_file_upload(Rails.root.join('spec/fixtures/files', 'example.png'), 'image/png') }
  end
end
