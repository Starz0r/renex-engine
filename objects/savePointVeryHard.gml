#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
sprite_index=sprSaveVeryHard
if (savedata("diff")>2) {
    instance_destroy()
}
