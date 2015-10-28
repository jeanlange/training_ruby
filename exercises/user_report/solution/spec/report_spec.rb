require './report'

describe Report do
  it 'lists the top companies' do
    expect(subject.output).to include 'Top Three Companies'
  end

  it 'lists the total active clients' do
    expect(subject.output).to include 'Active Users'
  end

  it 'has an entry for Pennsylvania' do
    expect(subject.output).to include 'Clients in Pennsylvania'
  end

  it 'has one vip' do
    expect(subject.output.scan('VIP').size).to eq 1
    expect(subject.output.scan('*').size).to eq 1
  end
end
