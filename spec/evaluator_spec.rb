require 'spec_helper'

describe "Evaluator" do
  def run(src)
    ast = Shiika::Parser.new.parse(src)
    program = Shiika::Program.new(ast)
    return Shiika::Evaluator.new.run(program)
  end

#  it 'class'
#
#  it 'constant'
#
#  it 'instance variable'

  it 'local variable' do
    expect(run("a = 1; a")).to eq(1)
  end

  it 'if' do
    expect(run("if true; 1; else 2; end")).to eq(1)
  end

  it 'literal' do
    expect(run("123")).to eq(123)
  end
end
