require 'leap_year'

describe 'leap_year?' do
  it 'is leap year' do
    expect(leap_year?(2000)).to be true
    expect(leap_year?(1988)).to be true
  end
  it 'is not leap year' do
    expect(leap_year?(1970)).to be false
    expect(leap_year?(1900)).to be false
    expect(leap_year?(1500)).to be false
  end
end