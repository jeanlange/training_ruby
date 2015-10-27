require_relative '../clients_report'

describe ClientsReport do
  it 'returns a list of clients' do
    expect(subject.report).to eq 'These 2 clients started on the same day. It was a Tuesday in February- Bob- DaneTane started first and started on 2011-03-02'
  end
end
