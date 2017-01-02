# encoding: UTF-8
require 'spec_helper'

describe HL7::Message::Segment::NPU do
  context 'general' do
    let(:base) { "NPU|NEPC^NPODC^C31^1|In Use|Dirty|EVAC|" }
    let(:npu) { HL7::Message::Segment::NPU.new(base) }

    it 'allows access to an NPU segment' do
      npu.should_not eq be_nil
    end

    it 'parses the location' do
      npu.location.should eq 'NEPC^NPODC^C31^1'
    end

    it 'parses the old bed status' do
      npu.old_bed_status.should eq 'In Use'
    end

    it 'parses the new bed status' do
      npu.new_bed_status.should eq 'Dirty'
    end

    it 'parses the room comment' do
      npu.room_comment.should eq 'EVAC'
    end
  end
end
