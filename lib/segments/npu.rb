# encoding: UTF-8
class HL7::Message::Segment::NPU < HL7::Message::Segment
  weight 2
  add_field :location
  add_field :new_bed_status
  add_field :old_bed_status
  add_field :room_comment
end
