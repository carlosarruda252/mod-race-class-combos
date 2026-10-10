-- Race/Class combo unlock (server side). Skills/spells apply automatically via
-- playercreateinfo_skills/_spell_custom race/class MASKS; only position (+ action bar) is per-combo.
-- Idempotent. Client also needs a CharBaseInfo.dbc patch to offer the combos in the UI.

-- GNOME PRIEST (RaceMask 64, ClassMask 16) - Copia de Human Priest (RaceMask 1, ClassMask 16)
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=64 AND `classMask`=16 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);
INSERT INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`)
  SELECT 64, 16, `skill`, `rank` FROM `playercreateinfo_skills` WHERE `raceMask`=1 AND `classMask`=16 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);

-- HUMAN HUNTER (RaceMask 1, ClassMask 4) - Copia de Orc Hunter (RaceMask 2, ClassMask 4)
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=1 AND `classMask`=4 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);
INSERT INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`)
  SELECT 1, 4, `skill`, `rank` FROM `playercreateinfo_skills` WHERE `raceMask`=2 AND `classMask`=4 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);

-- DWARF SHAMAN (RaceMask 4, ClassMask 64) - Copia de Orc Shaman (RaceMask 2, ClassMask 64)
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=4 AND `classMask`=64 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);
INSERT INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`)
  SELECT 4, 64, `skill`, `rank` FROM `playercreateinfo_skills` WHERE `raceMask`=2 AND `classMask`=64 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);

-- ORC MAGE (RaceMask 2, ClassMask 128) - Copia de Human Mage (RaceMask 1, ClassMask 128)
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=2 AND `classMask`=128 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);
INSERT INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`)
  SELECT 2, 128, `skill`, `rank` FROM `playercreateinfo_skills` WHERE `raceMask`=1 AND `classMask`=128 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);

-- TROLL WARLOCK (RaceMask 128, ClassMask 256) - Copia de Human Warlock (RaceMask 1, ClassMask 256)
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=128 AND `classMask`=256 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);
INSERT INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`)
  SELECT 128, 256, `skill`, `rank` FROM `playercreateinfo_skills` WHERE `raceMask`=1 AND `classMask`=256 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);

-- UNDEAD PALADIN (RaceMask 16, ClassMask 2) - Copia de Human Paladin (RaceMask 1, ClassMask 2)
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=16 AND `classMask`=2 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);
INSERT INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`)
  SELECT 16, 2, `skill`, `rank` FROM `playercreateinfo_skills` WHERE `raceMask`=1 AND `classMask`=2 AND `skill` NOT IN (98, 109, 111, 113, 115, 137, 313, 315);

