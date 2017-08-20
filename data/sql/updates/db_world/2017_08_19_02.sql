-- DB update 2017_08_19_01 -> 2017_08_19_02
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2017_08_19_01';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2017_08_19_01 2017_08_19_02 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1500226875532818300'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--
INSERT INTO version_db_world (`sql_rev`) VALUES ('1500226875532818300');

-- Brewfest Building
DELETE FROM `gameobject` WHERE `id`=186737;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`VerifiedBuild`) VALUES
(66860, 186737, 0, 1, 1, -5188.76, -594.416, 397.176, -1.18682, 0, 0, -0.559193, 0.829038, 120, 255, 1, 12340),
(66861, 186737, 0, 1, 1, -5140.78, -578.32, 397.176, -2.35619, 0, 0, -0.923879, 0.382686, 120, 255, 1, 12340),
(66862, 186737, 0, 1, 1, -5155.75, -635.502, 397.177, 1.79769, 0, 0, 0.782608, 0.622515, 120, 255, 1, 12340);

DELETE FROM `gameobject` WHERE `id`=186717;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`VerifiedBuild`) VALUES
(31406, 186717, 0, 1, 1, -5668.71, -475.584, 396.357, -1.67552, 0, 0, -0.743146, 0.669129, 180, 100, 1, 0),
(31404, 186717, 0, 1, 1, -5620.1, -473.021, 396.96, -0.244346, 0, 0, -0.121869, 0.992546, 180, 100, 1, 0),
(31403, 186717, 0, 1, 1, -5610.05, -457.484, 405.302, -0.366519, 0, 0, -0.182235, 0.983255, 180, 100, 1, 0),
(31416, 186717, 0, 1, 1, -5218.61, -491.613, 387.889, 1.76278, 0, 0, 0.771624, 0.636079, 180, 100, 1, 0),
(31415, 186717, 0, 1, 1, -5252.01, -477.25, 386.624, -1.37881, 0, 0, -0.636078, 0.771625, 180, 100, 1, 0),
(31417, 186717, 0, 1, 1, -5236.78, -635.825, 421.801, 0.558505, 0, 0, 0.275637, 0.961262, 180, 100, 1, 0),
(31418, 186717, 0, 1, 1, -5207.18, -535.754, 393.795, 1.78024, 0, 0, 0.777147, 0.629319, 180, 100, 1, 0),
(31420, 186717, 0, 1, 1, -5205.45, -479.062, 389.146, 2.09439, 0, 0, 0.866024, 0.500002, 180, 100, 1, 0),
(31422, 186717, 0, 1, 1, -5214.63, -514.152, 389.732, 1.74533, 0, 0, 0.766045, 0.642787, 180, 100, 1, 0),
(31428, 186717, 0, 1, 1, -5189.3, -525.506, 392.525, 1.98968, 0, 0, 0.838672, 0.544637, 180, 100, 1, 0),
(31429, 186717, 0, 1, 1, -5199.62, -432.817, 386.331, 2.72271, 0, 0, 0.978147, 0.207914, 180, 100, 1, 0),
(31434, 186717, 0, 1, 1, -5197.21, -505.307, 388.598, 2.00713, 0, 0, 0.843392, 0.537299, 180, 100, 1, 0),
(31438, 186717, 0, 1, 1, -5180.2, -615.989, 397.176, 0.418879, 0, 0, 0.207912, 0.978148, 180, 100, 1, 0),
(31452, 186717, 0, 1, 1, -5134.11, -586.723, 397.176, -2.80998, 0, 0, -0.986286, 0.165048, 180, 100, 1, 0),
(31455, 186717, 0, 1, 1, -5132.81, -616.437, 397.362, 2.49582, 0, 0, 0.948324, 0.317305, 180, 100, 1, 0),
(31463, 186717, 0, 1, 1, -5139.14, -632.325, 397.179, 1.69297, 0, 0, 0.748956, 0.66262, 180, 100, 1, 0),
(31467, 186717, 0, 1, 1, -5137.49, -622.278, 397.399, 2.33874, 0, 0, 0.920505, 0.390732, 180, 100, 1, 0),
(31472, 186717, 0, 1, 1, -5191.74, -736.322, 447.284, 0.837758, 0, 0, 0.406737, 0.913545, 180, 100, 1, 0),
(31512, 186717, 0, 1, 1, -5091.12, -734.743, 469.91, -1.48353, 0, 0, -0.67559, 0.737277, 180, 100, 1, 0),
(31603, 186717, 0, 1, 1, -4920.19, -940.244, 501.572, -1.50098, 0, 0, -0.681997, 0.731355, 180, 100, 1, 0),
(31604, 186717, 0, 1, 1, -4905.16, -956.521, 501.47, 2.9147, 0, 0, 0.993572, 0.113203, 180, 100, 1, 0),
(31610, 186717, 0, 1, 1, -4960.08, -1200.38, 501.659, 0.680678, 0, 0, 0.333807, 0.942642, 180, 100, 1, 0),
(31611, 186717, 0, 1, 1, -4983.49, -1204.28, 501.669, 2.32129, 0, 0, 0.91706, 0.398748, 180, 100, 1, 0),
(31612, 186717, 0, 1, 1, -4969.79, -1222.8, 501.67, -0.785398, 0, 0, -0.382683, 0.92388, 180, 100, 1, 0),
(31613, 186717, 0, 1, 1, -4678.11, -968.152, 501.659, -2.49582, 0, 0, -0.948324, 0.317305, 180, 100, 1, 0),
(31614, 186717, 0, 1, 1, -4673.02, -935.651, 501.659, 2.23402, 0, 0, 0.898794, 0.438372, 180, 100, 1, 0),
(31615, 186717, 0, 1, 1, -4649.49, -972.011, 501.66, -0.872665, 0, 0, -0.422618, 0.906308, 180, 100, 1, 0),
(31616, 186717, 0, 1, 1, -4712.87, -1213.87, 501.659, 2.35619, 0, 0, 0.923879, 0.382686, 180, 100, 1, 0),
(31617, 186717, 0, 1, 1, -4698.13, -1246.37, 501.659, -2.3911, 0, 0, -0.930417, 0.366502, 180, 100, 1, 0),
(31618, 186717, 0, 1, 1, -4675.36, -1228.17, 501.659, 0.663225, 0, 0, 0.325568, 0.945519, 180, 100, 1, 0),
(31620, 186717, 0, 1, 1, -9114.49, 342.775, 93.6672, 3.00197, 0, 0, 0.997564, 0.0697546, 180, 100, 1, 0),
(31621, 186717, 0, 1, 1, -9137.06, 372.115, 90.5726, 1.46608, 0, 0, 0.669132, 0.743144, 180, 100, 1, 0),
(31622, 186717, 0, 1, 1, -9137.36, 389.879, 90.9751, 0.366519, 0, 0, 0.182235, 0.983255, 180, 100, 1, 0),
(31623, 186717, 0, 1, 1, -9124.61, 357.999, 92.9819, -2.37365, 0, 0, -0.927184, 0.374606, 180, 100, 1, 0),
(31624, 186717, 0, 1, 1, -9150.72, 357.5, 89.9023, 2.80998, 0, 0, 0.986286, 0.165048, 180, 100, 1, 0),
(31625, 186717, 0, 1, 1, -9128.24, 325.459, 93.502, 1.85005, 0, 0, 0.798636, 0.601815, 180, 100, 1, 0),
(31626, 186717, 0, 1, 1, -9184.33, 335, 82.3169, -1.25664, 0, 0, -0.587786, 0.809016, 180, 100, 1, 0),
(26217, 186717, 1, 1, 1, 1959.5, -4694.7, 26.7062, 2.67035, 0, 0, 0.972369, 0.233447, 180, 100, 1, 0),
(26223, 186717, 1, 1, 1, 1934.4, -4678.79, 27.6517, 2.00713, 0, 0, 0.843392, 0.537299, 180, 100, 1, 0),
(30370, 186717, 1, 1, 1, 1629.97, -4407.76, 16.2626, -3.10669, 0, 0, -0.999848, 0.0174505, 180, 100, 1, 0),
(30382, 186717, 1, 1, 1, 1653.43, -4426.82, 16.7964, 2.26893, 0, 0, 0.906308, 0.422617, 180, 100, 1, 0),
(31120, 186717, 1, 1, 1, 1655.14, -4395.29, 21.8413, 0.279253, 0, 0, 0.139173, 0.990268, 180, 100, 1, 0),
(31637, 186717, 1, 1, 1, 1906.31, -4287.08, 30.3921, 2.46091, 0, 0, 0.942641, 0.333809, 180, 100, 1, 0),
(31638, 186717, 1, 1, 1, 1938.49, -4297.15, 24.7353, -2.14675, 0, 0, -0.878816, 0.477161, 180, 100, 1, 0),
(31639, 186717, 1, 1, 1, 1925.98, -4299.09, 24.9998, -1.29154, 0, 0, -0.601814, 0.798637, 180, 100, 1, 0),
(31663, 186717, 1, 1, 1, 1571.62, -4201.77, 42.7313, -0.907571, 0, 0, -0.438371, 0.898794, 180, 100, 1, 0),
(31664, 186717, 1, 1, 1, 1584.6, -4197.95, 41.3191, -1.55334, 0, 0, -0.700908, 0.713252, 180, 100, 1, 0),
(31665, 186717, 1, 1, 1, 1555.37, -4175.87, 40.5492, 2.77507, 0, 0, 0.983255, 0.182237, 180, 100, 1, 0),
(31688, 186717, 1, 1, 1, 1349.71, -4357.94, 26.9592, -0.593412, 0, 0, -0.292372, 0.956305, 120, 255, 1, 0),
(31704, 186717, 1, 1, 1, 1294.07, -4439.13, 27.457, 1.8675, 0, 0, 0.803856, 0.594824, 180, 100, 1, 0),
(31706, 186717, 1, 1, 1, 1294.49, -4412.17, 26.6057, 1.01229, 0, 0, 0.484809, 0.87462, 180, 100, 1, 0),
(31710, 186717, 1, 1, 1, 1305.78, -4408.33, 26.0013, -1.309, 0, 0, -0.608763, 0.793352, 180, 100, 1, 0),
(31711, 186717, 1, 1, 1, 1308.47, -4448.67, 26.1855, -1.27409, 0, 0, -0.594823, 0.803857, 180, 100, 1, 0),
(31714, 186717, 1, 1, 1, 1309.91, -4371.14, 27.8511, -0.820305, 0, 0, -0.398749, 0.91706, 180, 100, 1, 0),
(31716, 186717, 1, 1, 1, 1318.33, -4549.21, 23.3389, -1.53589, 0, 0, -0.694658, 0.71934, 180, 100, 1, 0),
(31717, 186717, 1, 1, 1, 1314.64, -4599.17, 24.5226, -1.11701, 0, 0, -0.529919, 0.848048, 180, 100, 1, 0),
(31719, 186717, 1, 1, 1, 1277.15, -4417.56, 26.4655, 2.75762, 0, 0, 0.981627, 0.190809, 180, 100, 1, 0),
(31720, 186717, 1, 1, 1, 1227.34, -4433.46, 24.402, 1.81514, 0, 0, 0.78801, 0.615662, 180, 100, 1, 0),
(31735, 186717, 1, 1, 1, 1161.78, -4398.23, 25.272, -1.71042, 0, 0, -0.754709, 0.65606, 180, 100, 1, 0),
(31737, 186717, 1, 1, 1, 1176.38, -4300.89, 21.1914, 0.383972, 0, 0, 0.190809, 0.981627, 180, 100, 1, 0),
(31742, 186717, 1, 1, 1, 1212.8, -4272.35, 21.0265, -2.14675, 0, 0, -0.878816, 0.477161, 180, 100, 1, 0),
(31752, 186717, 1, 1, 1, 1218.07, -4278.28, 21.0851, -2.44346, 0, 0, -0.939692, 0.342021, 180, 100, 1, 0),
(31754, 186717, 1, 1, 1, 1205.74, -4268.39, 21.0905, -1.88496, 0, 0, -0.809018, 0.587783, 180, 100, 1, 0),
(31755, 186717, 1, 1, 1, 1198.63, -4266.14, 21.1134, -1.51844, 0, 0, -0.688356, 0.725373, 180, 100, 1, 0),
(31764, 186717, 1, 1, 1, 1100.76, -4429.74, 20.5644, 2.21657, 0, 0, 0.894935, 0.446197, 180, 100, 1, 0),
(31873, 186717, 1, 1, 1, -1418.73, 102.123, 14.946, -2.05949, 0, 0, -0.857168, 0.515037, 180, 100, 1, 0),
(31880, 186717, 1, 1, 1, -1284.12, 120.319, 131.312, -0.907571, 0, 0, -0.438371, 0.898794, 180, 100, 1, 0),
(31881, 186717, 1, 1, 1, -1291.39, 153.72, 129.813, -1.39626, 0, 0, -0.642786, 0.766046, 180, 100, 1, 0),
(31882, 186717, 1, 1, 1, -1319.69, 185.807, 59.8067, 2.75762, 0, 0, 0.981627, 0.190809, 180, 100, 1, 0),
(31883, 186717, 1, 1, 1, -1273.6, 211.756, 59.5917, 0.506145, 0, 0, 0.25038, 0.968148, 180, 100, 1, 0),
(31884, 186717, 1, 1, 1, -1296.11, 219.047, 58.7385, -1.29154, 0, 0, -0.601814, 0.798637, 180, 100, 1, 0),
(31885, 186717, 1, 1, 1, -1250.5, 232.533, 41.1638, 1.43117, 0, 0, 0.656059, 0.75471, 180, 100, 1, 0),
(31920, 186717, 0, 1, 1, 1701.79, 242.017, 62.5471, -2.63545, 0, 0, -0.968148, 0.250379, 180, 100, 1, 0),
(31921, 186717, 0, 1, 1, 1838.35, 235.119, 60.4209, 1.6057, 0, 0, 0.719339, 0.694659, 180, 100, 1, 0),
(31922, 186717, 0, 1, 1, 1822.31, 259.144, 59.8849, -2.1293, 0, 0, -0.874619, 0.48481, 180, 100, 1, 0),
(31923, 186717, 0, 1, 1, 1815.78, 218.117, 59.7101, 1.50098, 0, 0, 0.681997, 0.731355, 180, 100, 1, 0),
(31924, 186717, 0, 1, 1, 1919.1, 246.858, 49.9504, 0.698132, 0, 0, 0.34202, 0.939693, 180, 100, 1, 0),
(31925, 186717, 0, 1, 1, 1889.78, 227.193, 56.9169, 0.20944, 0, 0, 0.104529, 0.994522, 180, 100, 1, 0),
(32290, 186717, 0, 1, 1, 1811.14, 316.887, 70.8147, 1.81514, 0, 0, 0.78801, 0.615662, 180, 100, 1, 0),
(81075, 186717, 530, 1, 1, -1756.52, 5499.92, -12.4281, -2.07694, 0, 0, -0.861629, 0.507539, 180, 255, 1, 0),
(81076, 186717, 530, 1, 1, -1791.72, 5550.14, -12.4281, -1.22173, 0, 0, -0.573576, 0.819152, 180, 255, 1, 0),
(81077, 186717, 530, 1, 1, -1996.52, 5442.87, -12.4281, -1.83259, 0, 0, -0.793352, 0.608764, 180, 255, 1, 0),
(81078, 186717, 530, 1, 1, -1884.83, 5488.84, -12.4281, -1.309, 0, 0, -0.608763, 0.793352, 180, 255, 1, 0),
(81079, 186717, 530, 1, 1, -1869.96, 5574.38, -12.4281, -2.05949, 0, 0, -0.857168, 0.515037, 180, 255, 1, 0),
(81080, 186717, 530, 1, 1, -1911.65, 5571.59, -12.4281, -1.39626, 0, 0, -0.642786, 0.766046, 180, 255, 1, 0),
(81081, 186717, 530, 1, 1, -1932.64, 5562.31, -12.4281, -1.309, 0, 0, -0.608763, 0.793352, 180, 255, 1, 0),
(59177, 186717, 530, 1, 1, -4008.29, -11857.1, 0.135722, 5.47893, 0, 0, 0.391377, -0.92023, 300, 0, 1, 0),
(59178, 186717, 530, 1, 1, -4002.56, -11851, 0.205429, 5.13728, 0, 0, 0.542116, -0.840304, 300, 0, 1, 0),
(59179, 186717, 1, 1, 1, 9962.87, 2218.32, 1329.82, 1.77101, 0, 0, 0.774235, 0.632899, 300, 0, 1, 0),
(59180, 186717, 1, 1, 1, 9963.64, 2192.59, 1328.52, 4.74374, 0, 0, 0.695936, -0.718104, 300, 0, 1, 0),
(59183, 186717, 530, 1, 1, 9319.23, -7265.19, 13.7578, 2.02761, 0, 0, 0.848849, 0.528635, 300, 0, 1, 0),
(59184, 186717, 530, 1, 1, 9310.25, -7291.41, 14.4908, 2.53027, 0, 0, 0.953648, 0.300924, 300, 0, 1, 0),
(66863, 186717, 0, 1, 1, -5209.84, -459.363, 386.537, 2.56563, 0, 0, 0.958819, 0.284016, 120, 255, 1, 12340),
(66864, 186717, 0, 1, 1, -5226.54, -479.026, 386.534, 2.23402, 0, 0, 0.898793, 0.438373, 120, 255, 1, 12340),
(66865, 186717, 0, 1, 1, -5233.38, -482.264, 386.337, 1.91986, 0, 0, 0.819152, 0.573577, 120, 255, 1, 12340),
(66866, 186717, 0, 1, 1, -5206.92, -452.243, 386.808, 3.01941, 0, 0, 0.998135, 0.0610518, 120, 255, 1, 12340);

DELETE FROM `gameobject` WHERE `id`=180052;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`VerifiedBuild`) VALUES
(13840, 180052, 0, 1, 1, -9583.73, 38.0032, 60.1551, 0.139626, 0, 0, 0.0697563, 0.997564, 180, 100, 1, 0),
(66867, 180052, 0, 1, 1, -5175.3, -625.165, 397.176, 2.91469, 0, 0, 0.993571, 0.113208, 120, 255, 1, 12340);

DELETE FROM `gameobject` WHERE `id`=186217;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`VerifiedBuild`) VALUES
(66868, 186217, 0, 1, 1, -5208.21, -456.072, 386.746, 2.70526, 0, 0, 0.976295, 0.216442, 120, 255, 1, 12340),
(66869, 186217, 0, 1, 1, -5230.03, -480.293, 386.4, 2.1293, 0, 0, 0.874619, 0.48481, 120, 255, 1, 12340);

DELETE FROM `gameobject` WHERE `id`=180026;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`VerifiedBuild`) VALUES
(13895, 180026, 0, 1, 1, -9515.77, 144.288, 59.698, -0.575959, 0, 0, -0.284016, 0.95882, 180, 100, 1, 0),
(13829, 180026, 0, 1, 1, -9525.46, 71.1421, 58.898, 2.96706, 0, 0, 0.996195, 0.0871556, 180, 100, 1, 0),
(31878, 180026, 1, 1, 1, -1461.98, 170.177, -7.74639, -0.122173, 0, 0, -0.0610485, 0.998135, 180, 100, 1, 0),
(31914, 180026, 1, 1, 1, -1589.68, 101.771, -10.5788, -1.64061, 0, 0, -0.731354, 0.681998, 180, 100, 1, 0),
(66870, 180026, 0, 1, 1, -5208.1, -455.96, 386.515, -2.9845, 0, 0, -0.996917, 0.0784664, 120, 255, 1, 12340),
(66871, 180026, 0, 1, 1, -5229.86, -480.288, 386.363, 2.68781, 0, 0, 0.97437, 0.224951, 120, 255, 1, 12340);


DELETE FROM `gameobject` WHERE `id`=180052;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`VerifiedBuild`) VALUES
(13840, 180052, 0, 1, 1, -9583.73, 38.0032, 60.1551, 0.139626, 0, 0, 0.0697563, 0.997564, 180, 100, 1, 0),
(66867, 180052, 0, 1, 1, -5175.3, -625.165, 397.176, 2.91469, 0, 0, 0.993571, 0.113208, 120, 255, 1, 12340);

DELETE FROM `gameobject` WHERE `id`=186217;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`VerifiedBuild`) VALUES
(66868, 186217, 0, 1, 1, -5208.21, -456.072, 386.746, 2.70526, 0, 0, 0.976295, 0.216442, 120, 255, 1, 12340),
(66869, 186217, 0, 1, 1, -5230.03, -480.293, 386.4, 2.1293, 0, 0, 0.874619, 0.48481, 120, 255, 1, 12340);

DELETE FROM `gameobject` WHERE `id`=180026;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`VerifiedBuild`) VALUES
(13895, 180026, 0, 1, 1, -9515.77, 144.288, 59.698, -0.575959, 0, 0, -0.284016, 0.95882, 180, 100, 1, 0),
(13829, 180026, 0, 1, 1, -9525.46, 71.1421, 58.898, 2.96706, 0, 0, 0.996195, 0.0871556, 180, 100, 1, 0),
(31878, 180026, 1, 1, 1, -1461.98, 170.177, -7.74639, -0.122173, 0, 0, -0.0610485, 0.998135, 180, 100, 1, 0),
(31914, 180026, 1, 1, 1, -1589.68, 101.771, -10.5788, -1.64061, 0, 0, -0.731354, 0.681998, 180, 100, 1, 0),
(66870, 180026, 0, 1, 1, -5208.1, -455.96, 386.515, -2.9845, 0, 0, -0.996917, 0.0784664, 120, 255, 1, 12340),
(66871, 180026, 0, 1, 1, -5229.86, -480.288, 386.363, 2.68781, 0, 0, 0.97437, 0.224951, 120, 255, 1, 12340);

DELETE FROM `game_event` WHERE `eventEntry`=70;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (70, '2016-09-20 01:01:00', '2020-12-31 06:00:00', 525600, 4320, 0, 'Brewfest Building (Iron Forge)', 0);

DELETE FROM `game_event_creature` WHERE abs(`eventEntry`) = 70;
DELETE FROM `game_event_gameobject` WHERE abs(`eventEntry`) = 70;
INSERT INTO `game_event_gameobject` (`guid`, `eventEntry`) VALUES
(66860,70),
(66861,70),
(66862,70),
(66863,70),
(66864,70),
(66865,70),
(66866,70),
(66867,70),
(66868,70),
(66869,70),
(66870,70),
(66871,70);

-- Darkmoon Faire Building
DELETE FROM `game_event` WHERE `eventEntry`=71;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (71, '2013-01-06 01:01:00', '2020-12-31 06:00:00', 131040, 8639, 0, 'Darkmoon Faire Building (Mulgore)', 0);

DELETE FROM `game_event_creature` WHERE abs(`eventEntry`) = 71;
INSERT INTO `game_event_creature` (`guid`, `eventEntry`) VALUES
(54395,71);

DELETE FROM `game_event_gameobject` WHERE abs(`eventEntry`) = 71;
INSERT INTO `game_event_gameobject` (`guid`, `eventEntry`) VALUES
(31872,71),
(31874,71),
(31875,71),
(31876,71),
(31877,71),
(31878,71),
(31879,71),
(31912,71),
(31913,71),
(31914,71),
(31915,71),
(31916,71),
(31918,71),
(31919,71);
--
-- END UPDATING QUERIES
--
COMMIT;
END;
//
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
