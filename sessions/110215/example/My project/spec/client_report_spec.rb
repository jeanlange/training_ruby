require_relative '../clients_report'

describe ClientsReport do


  it 'returns a list of clients' do
    names = ['bob','jane','tim']
    test_report = ClientsReport.new(names)

    out_string = <<-OUTSTRING
Bob
Jane
Tim
    OUTSTRING

    expect(test_report.output).to eq out_string
  end

  it 'returns the first client' do
    names = ['bob','jane','tim']
    test_report = ClientsReport.new(names)

    expect(test_report.first_client).to eq 'Bob'
  end

  it 'returns a reversed client list' do
    names = ['bob','jane','tim']
    test_report = ClientsReport.new(names)

    expect(test_report.reverse).to eq ['mit','enaj','bob']
  end




end
