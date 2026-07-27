<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-10c0-33dc-a9e8-141f" name="Pillage" battleScribeVersion="2.03" revision="1" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <categoryEntries>
    <categoryEntry name="Cavalry" id="373d-f121-420b-4837" hidden="false"/>
    <categoryEntry name="Chieftain" id="beac-c21e-5fb5-9ec0" hidden="false"/>
    <categoryEntry name="Banner" id="0d90-fe5f-a1e1-8fc5" hidden="false"/>
    <categoryEntry name="Warhorn" id="ef59-7677-afdd-3f24" hidden="false"/>
    <categoryEntry name="Ranged Weapon" id="163f-1820-848c-271d" hidden="false"/>
    <categoryEntry name="Warrior" id="fbfe-2e24-1e84-8984" hidden="false"/>
    <categoryEntry name="Pack Master" id="4967-c713-22c5-2fb3" hidden="false"/>
    <categoryEntry name="Berserker" id="8a90-9bee-5758-3283" hidden="false"/>
    <categoryEntry name="Huscarl" id="a9b5-1198-781f-a9d1" hidden="false"/>
    <categoryEntry name="Supply Wagon" id="5fe9-1d08-5b75-fa8c" hidden="false"/>
    <categoryEntry name="Healer" id="12e9-c1e9-1b4b-b9d9" hidden="false"/>
    <categoryEntry name="Cataphracts" id="9106-4ef0-0942-8c50" hidden="false"/>
    <categoryEntry name="Kataphraktoi" id="bcab-8d6c-324c-2c1d" hidden="false"/>
    <categoryEntry name="CHIEFCON" id="d936-c270-e692-1054" hidden="true">
      <comment>for chieftain limit</comment>
    </categoryEntry>
    <categoryEntry name="Bők" id="a638-5e21-8172-d006" hidden="false"/>
  </categoryEntries>
  <costTypes>
    <costType name="Gold Pieces" id="4163-7d26-88e5-be23" defaultCostLimit="-1"/>
  </costTypes>
  <sharedSelectionEntryGroups>
    <selectionEntryGroup name="Talents" id="6670-296f-4e21-c004" hidden="false" collapsible="true">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="War of Fire" hidden="false" id="266a-f39d-5e91-7ed7">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="4b7d-90e1-043c-15a1" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="War of Fire" id="7d12-8343-66e4-8ea1" hidden="false">
              <description>Your figures get a +1 bonus to their fire rolls.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Magic Sword" hidden="true" id="177f-a2d3-387c-8877">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="90d2-c0c7-2f7b-9e2e" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Magic Sword" id="3abc-fce6-471c-f653" hidden="false">
              <description>A chieftain equipped with a magic sword can re-roll failed defence rolls.</description>
            </rule>
          </rules>
          <comment>Add cost of hand weapon</comment>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Dog Trainer" hidden="true" id="7229-a0c1-30a9-32a8">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="9ec1-a592-4404-089a" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="0"/>
          </costs>
          <modifiers>
            <modifier type="increment" value="10" field="4163-7d26-88e5-be23">
              <repeats>
                <repeat value="1" repeats="1" field="selections" scope="roster" childId="4967-c713-22c5-2fb3" shared="true" roundUp="false" includeChildSelections="true" includeChildForces="true" childName="Pack Master"/>
              </repeats>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
              </conditions>
            </modifier>
          </modifiers>
          <rules>
            <rule name="Dog Trainer" id="909b-049f-ad13-8556" hidden="false">
              <description>Your pack masters each have 4 dogs rather than 3.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Force of Nature" hidden="false" id="f845-186e-c361-9989">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="8a5b-d806-85f0-8de1" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Force of Nature" id="f6a3-0030-9bf9-0a95" hidden="false">
              <description>Your Chieftain gets one additional hit point, and so goes from 3 to 4 hit points.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Grand Marshal of Horses" hidden="false" id="7209-ac6b-105f-c89f">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="c274-1955-45c0-0fb9" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Grand Marshal of Horses" id="f30e-c216-e389-494f" hidden="false">
              <description>Your cavalry figures get no movement penalty for crossing passable obstacles, and get a +1 bonus to their rolls to cross obstacles. 


This means that in this specific situation, your cavalry figures can never fall.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Hunter" hidden="false" id="d73b-61d0-330b-3587">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="f31a-43f7-1abe-da6c" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Hunter" id="a6bc-8fac-0a74-cdc4" hidden="false">
              <description>Difficult terrain becomes normal terrain for infantry, and only reduces cavalry movement by half (instead of three quarters).</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Contubernium! " hidden="true" id="be82-774b-856e-44b8">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="c2c9-306f-2897-a8be" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Contubernium!" id="f94d-9eaa-0325-879c" hidden="false">
              <description>At the start of your movement phase, your chieftain can order a maneuver: up to 3 Roman figures (i.e. not foederati allies) within 6” of the Chieftain can move up to 3”. 


This move is free and can’t be used to charge. Figures moved this way can resolve their own Movement Phase normally.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Lewd Provocations" hidden="false" id="8980-e8f9-646c-7ef0">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="1c8c-8379-926e-3d18" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
          </costs>
          <rules>
            <rule name="Lewd Provocations" id="4474-0c82-0e82-a68e" hidden="false">
              <description>During the first melee of the game, your opponent gets a -1 penalty to all their rolls to hit.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Marksmanship Training" hidden="false" id="fd53-4e55-0d62-bbdf">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="4ccb-9639-e2e9-c9ff" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Marksmanship Training" id="80c7-c2f3-c3ed-03b1" hidden="false">
              <description>From now on, your ranged weapons increase their ranges by +2”.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Master of Evasion" hidden="true" id="d227-b2c0-38d6-fb85">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="d43a-a428-be32-6910" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Master of Evasion" id="3972-3cd3-6f34-8908" hidden="false">
              <description>All your infantry figures get +1 to their rolls to flee. That means their flee rolls now succeeds on a result of 3, 4, 5, or 6.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Loyal to the Emperor" hidden="true" id="a758-1832-0db1-743c">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="521d-2e96-43d8-dda2" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="25"/>
          </costs>
          <rules>
            <rule name="Loyal to the Emperor" id="8de8-3225-6144-8b41" hidden="false">
              <description>Rus’ and Varangian warriors were often employed by the emperor in Constantinople. Your army is therefore part of the emperor’s Varangian Guard.


You don’t need to make a morale check when your chieftain leaves the battlefield.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Master Stalker" hidden="true" id="de71-c3a5-dd1c-741b">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="ed09-d184-95c3-c2bf" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Master Stalker" id="4c00-4d8d-e264-8e8c" hidden="false">
              <description>Flee rolls by your cavalry figures succeed on a 3+ instead of a 4+.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Mead Merchant" hidden="false" id="fa00-123c-2a78-2f02">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="4552-06ab-cc1d-ce4d" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Mead Merchant" id="efd2-e0f9-776f-ed39" hidden="false">
              <description>All your figures add +1” to their charge movement rolls (normal move +1d3” +1”).</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Molesight" hidden="false" id="130d-92fd-d74d-acff">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="d8e9-d50c-9c23-d538" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Molesight" id="d7a7-7fbf-9fe4-6e7e" hidden="false">
              <description>When your chieftain makes a search roll, it automatically succeeds.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Odin’s Sight" hidden="true" id="238f-fa16-7de8-fedd">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="edf5-6647-c12f-31d7" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
          <rules>
            <rule name="Odin’s Sight" id="fc23-742e-1bcf-822a" hidden="false">
              <description>Your chieftain doesn’t need line of sight to charge an enemy.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="10c5-139d-8f93-83fe" shared="true" childName="VIKINGS (NORSE)"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Bearer of the Holy Grail" hidden="true" id="a2fe-da1f-7f8e-8e80">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="4a5d-0044-f3ce-5709" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Bearer of the Holy Grail" id="b3a8-cd67-2a82-d24c" hidden="false">
              <description>Once per game, your chieftain can drink from the chalice at the start of the turn (before the Initiative Phase). They can’t take any damage for the rest of the turn. In addition, you get a +1 bonus to your initiative rolls for the rest of the game (while your chieftain still lives).</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Relic Bearer" hidden="true" id="8e80-8370-3ac9-59b9">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="97ad-5737-edf3-9b54" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="60"/>
          </costs>
          <rules>
            <rule name="Relic Bearer" id="2253-996b-f7e3-e164" hidden="false">
              <description>Friendly figures within 6” of your chieftain (including your chieftain) can re-roll their failed to hit rolls in melee.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Shield Training" hidden="false" id="7e0d-9d10-859f-65e7">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="d8e3-5b16-8d00-7a53" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Shield Training" id="5fef-5fd9-dcbb-97b2" hidden="false">
              <description>Shieldwalls need one fewer figures to be or to remain formed (so 4 figures instead of 5).</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Slayer of Pagans" hidden="true" id="e2a4-b783-7b1c-5af8">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="7734-b2a1-fda2-7a16" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Slayer of Pagans" id="177a-5901-7c20-e224" hidden="false">
              <description>Your chieftain gets a +1 bonus to its rolls to hit Vikings (and only Vikings).</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Foederati" hidden="true" id="9ae6-be6d-5d87-35d0">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="25ec-bc13-928d-a934" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="60"/>
          </costs>
          <rules>
            <rule name="Foederati" id="1cb3-9e60-c6ed-10c0" hidden="false">
              <description>Choose another faction to become your ally. You can recruit its troops (and their equipment), but your chieftain(s) must still be Romans.


All the allied faction’s special rules apply to the allied figures in your army.</description>
            </rule>
          </rules>
          <comment>faction ally</comment>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Thegn" hidden="true" id="8065-b18b-e169-2705">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="afe6-de91-43a9-9ab4" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="15"/>
          </costs>
          <rules>
            <rule name="Thegn" id="712b-90f1-a114-5489" hidden="false">
              <description>Choose a figure in your army to become your chieftain’s thegn. 
They can have any armour class.


The first wound your chieftain takes is cancelled if the thegn is within 2” of them.


The thegn warns your chieftain of the danger, letting them dodge the blow as it falls.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Warhorses" hidden="true" id="f6d5-3da6-b21f-1827">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="33bf-1f07-b7f7-407d" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Warhorses" id="2e08-1454-ff93-d420" hidden="false">
              <description>Your warhorses have an armour class of SA, rather than the usual UA.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Steppe Mobility" hidden="true" id="353a-edb6-b78c-fc19">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="c634-b0fb-ac12-3466" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Steppe Mobility" id="7333-d43f-102f-c013" hidden="false">
              <description>All your cavalry figures increase their movement range by +2”, and automatically cross obstacles successfully.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Athletic Training" hidden="false" id="169f-c4e5-f7c6-3551">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="8e00-b9dc-af60-73cb" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Athletic Training" id="a625-c191-300f-7a2f" hidden="false">
              <description>Your infantry figures ignore the movement penalties for passable obstacles, and can charge across them.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Scramaseax" hidden="true" id="f3eb-4b6d-b6f9-c693">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="d3c7-c58f-369a-a809" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="80"/>
          </costs>
          <rules>
            <rule name="Scramaseax" id="f149-50ba-e9a7-0778" hidden="false">
              <description>Each of your warriors has a scramaseax as their improvised weapon. When one of your figures fights with an improvised weapon, it can re-roll its failed rolls to hit.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="The Legion Wall" hidden="true" id="1b84-5ba4-62f6-522e">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="97cd-86b1-fc0a-28f3" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="The Legion Wall" id="32cb-8001-59f3-c6c1" hidden="false">
              <description>When you form a shieldwall, your defence rolls are increased by +2 instead of the usual +1 bonus.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Cornu" hidden="true" id="6522-fccc-9da7-2906">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="ccf9-a079-8c71-3a62" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Cornu" id="f1d3-9250-b766-cf7d" hidden="false">
              <description>Your warhorns are replaced with cornua, which follow all the rules for warhorns. In addition, figures within 6” of a friendly cornu get a +1 bonus to their Fleeing rolls.


Finally, all friendly figures within 6” of a cornu’s bearer move an extra 2” when Fleeing.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Shield Bash" hidden="true" id="4e23-774c-1364-a924">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="baff-4e15-dc8c-8582" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="80"/>
          </costs>
          <rules>
            <rule name="Shield Bash" id="500b-9bac-2b72-f934" hidden="false">
              <description>While engaged in melee, warriors equipped with a shield can use it make an improvised weapon attack in addition to their usual attacks.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Backhander" hidden="true" id="9cbc-18ff-87d8-56ac">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="317d-8bf2-adbf-76d3" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Backhander" id="24a1-324d-8f04-3c12" hidden="false">
              <description>Before the battle, after the troops are deployed, the Byzantine player chooses an enemy warrior (not a special character, and without special equipment) and rolls 1d6. 


On a 4+ that warrior joins their army, and they can place the figure anywhere in their own deployment zone.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Palatine Guard" hidden="true" id="3155-75e5-9206-39fb">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="24dd-78cf-ddad-fee5" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Palatine Guard" id="fdb7-7d1a-d8a6-9ba4" hidden="false">
              <description>When a Merovingian chieftain is wounded, he can choose to assign the hit to any other allied figure in base contact with him.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="King of Ambushes" hidden="false" id="02ef-52bb-165a-3543">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="1cdd-9966-8867-7989" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="King of Ambushes" id="1426-4e31-d58b-b224" hidden="false">
              <description>You can hide up to 25% (rounding up) of your figures “in ambush”. Special characters or special equipment cannot be ambushed.


Before deployment, note on a piece of paper – away from prying eyes – the spot where all your ambushing troops are hiding. It is impossible to hide troops in the opponent’s deployment zone(s).


You can choose to make your troops emerge during a movement phase. Show your enemy the spot in question, and show them the paper confirmation, then place your figures in base-to-base contact with their hiding spot.


They can move or charge normally. All your figures must emerge at the same time.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Poison Specialist " hidden="false" id="4db4-027b-99d7-91bc">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="b4a5-8fd9-01de-773a" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Poison Specialist " id="da50-8ca8-5a63-b779" hidden="false">
              <description>Single use. At the start of the game, roll 1d6. 


On a result of 1 or 2, nothing happens. 


On a 3 or 4, the enemy chieftain is stunned, and can’t take any actions until the second turn of the game. 


On a 5 or 6, the enemy chieftain loses 1 hit point. If the enemy force contains several chieftains, declare your target before rolling.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Scout" hidden="true" id="6d60-e67d-3537-7693">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="3041-fb57-fe0a-b97f" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="20"/>
          </costs>
          <rules>
            <rule name="Scout" id="5a1e-5a83-8c34-3f3b" hidden="false">
              <description>After both armies have deployed, choose a figure from among your troops to be your scout. You can deploy it anywhere on the battlefield more than 15” away from an enemy deployment area.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Equites Dumnonii" hidden="true" id="5aeb-2e9e-72f6-eebd">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="4ef9-38ae-fe26-8e46" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Equites Dumnonii" id="ce7f-4fb0-2d0c-d9bf" hidden="false">
              <description>When a Romano-British cavalry figure charges from at least 6” away, it gets a +1 bonus to its roll to hit during the turn in which it charges.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Arian Zealots" hidden="true" id="46fe-b11c-6396-c78c">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="459d-0b88-5f55-62b3" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Arian Zealots" id="3953-4dba-018e-1ab1" hidden="false">
              <description>When a Visigoth figure charges a non-Visigoth figure, it can choose to re-roll its charge roll if it doesn’t like the result.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="War Cry" hidden="true" id="67bb-cbaa-7624-8a75">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="86ae-8d99-2391-b099" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="War Cry" id="ceb2-84ce-eaeb-a696" hidden="false">
              <description>Single use – At the start of the melee phase, all Picts gain a +1 bonus to their rolls to hit, but take a -1 penalty to their defence rolls.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Master of the Long Knife" hidden="true" id="028b-cef4-926b-27f2">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="8f70-823a-03a6-58e2" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Master of the Long Knife" id="221c-3a92-3348-3e21" hidden="false">
              <description>When they charge into an enemy, all your infantry warriors can make an additional improvised weapon attack.


This attack is in addition to the one(s) made with their main weapon, but without the charge bonus. The enemy can make a defence roll against this attack as normal.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="459c-c87d-e25f-2e45" shared="true" childName="WELSH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Swift As Lightning" hidden="false" id="5a7f-6d8f-5399-d04a">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="9f93-69d9-1dda-b59a" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Swift As Lightning" id="9d94-478b-0b86-a75d" hidden="false">
              <description>Your chieftain grants a +1 bonus to your initiative rolls.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Spare Horses" hidden="true" id="f6d1-5a85-7395-f3d0">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="f98f-650a-17ef-a7af" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Spare Horses" id="4aa0-70d5-2cf3-b504" hidden="false">
              <description>Any Magyar rider who loses their horse can get a new one. At the start of its movement phase, a Magyar cavalry figure that has become an infantry figure in the previous turn can roll 1d6. 


On a 6, it finds a new horse and becomes a cavalry figure once more: replace the figure. 


The cavalry figure can’t move this turn. If the roll is a failure, the figure can move as normal but remains an infantry figure for the rest of the game.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
      </selectionEntries>
      <constraints>
        <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="92bd-c520-6883-8536" includeChildSelections="false"/>
      </constraints>
    </selectionEntryGroup>
    <selectionEntryGroup name="Melee Weapons" id="b636-d073-f157-2912" hidden="false" sortIndex="1" collapsible="true">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Improvised Weapon" hidden="false" id="2fef-ac13-0216-9c7e" sortIndex="1">
          <profiles>
            <profile name="Improvised Weapon" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="d291-2cb9-0448-7db0">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">5+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">6+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">6+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">-</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="Re-roll its failed rolls to hit." field="c8e2-d135-1e5f-04c6">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="f3eb-4b6d-b6f9-c693" shared="true" childName="Scramaseax" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="80db-cf82-8f07-f153" includeChildSelections="false"/>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="6230-c551-2da8-0b6f" automatic="true"/>
          </constraints>
          <modifiers>
            <modifier type="set" value="1" field="6230-c551-2da8-0b6f">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="12e9-c1e9-1b4b-b9d9" shared="true" childName="Healer"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Scramaseax" field="name">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="roster" childId="f3eb-4b6d-b6f9-c693" shared="true" childName="Scramaseax" includeChildSelections="true" includeChildForces="true"/>
              </conditions>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="1" field="defaultAmount"/>
          </modifiers>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
            </modifierGroup>
          </modifierGroups>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Spear" hidden="false" id="9baa-d681-954c-2534" sortIndex="2">
          <profiles>
            <profile name="Spear" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="4b2d-71a8-f94a-bab4">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">4+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">5+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">5+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">-</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="3be1-c793-33a1-6b49" includeChildSelections="false"/>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="30c9-27ad-0b7c-7acc" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
          </costs>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="0" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
              </conditions>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
              </conditions>
            </modifier>
            <modifier type="set" value="1" field="30c9-27ad-0b7c-7acc">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
              </conditions>
            </modifier>
          </modifiers>
          <rules>
            <rule name="Support" id="c2c4-ad88-e3b7-ec3d" hidden="false">
              <description>To support an ally, the spearman must be in base-to-base contact with it, and can’t be engaged in a melee itself. The spearman figure must therefore be within about 1” of an enemy figure when it supports an ally.


When a figure armed with a spear supports an ally, enemies engaged in melee with that ally get a -1 to their to hit rolls.


When a spearman supports an ally, they don’t count as being engaged in melee and are therefore free to move. They can be targeted by shooting and chargers, for example.


A spearman can only support a single ally each game turn. If a spearman is in position to support several allies at once, the player who owns the spearman gets to choose which figure he will support. Similarly, a figure can only be supported by a single spearman.


If the friendly figure that the spearman was supporting is destroyed at the end of a melee, the spearman has to take its place in contact with the opponent. This is not a charge.


Therefore, at the end of the combat, move the spearman figure into contact with the enemy. Both figures count as engaged in melee during the next turn of the game, so no charge bonus will apply.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Hand Weapon" hidden="false" id="03f9-3c25-1bff-a4ef" sortIndex="3">
          <profiles>
            <profile name="Hand Weapon" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="9eeb-066a-deaf-d706">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">3+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">4+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">4+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">-</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="Sabre" field="name">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="*Magyars have sabres rather than hand weapons. These have a -1 penalty to rolls to hit figure in armour." field="c8e2-d135-1e5f-04c6">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="5+" field="24af-bc22-9d7a-7846">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="5+" field="b570-92f0-a14a-f39b">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="3128-7728-b63e-207a" includeChildSelections="false" automatic="false"/>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="61d6-f61d-c8f0-9171" includeChildSelections="false" automatic="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="15" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="20" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="459c-c87d-e25f-2e45" shared="true" childName="WELSH"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="Sabre" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
              </conditions>
            </modifier>
            <modifier type="set" value="1" field="3128-7728-b63e-207a">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
              </conditions>
            </modifier>
            <modifier type="set" value="0" field="61d6-f61d-c8f0-9171">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="parent" childId="5a39-8c7e-613f-862d" shared="true" childName="Two Hand Weapons" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Dane Axe" hidden="false" id="8334-ccc2-7566-7812" sortIndex="4">
          <profiles>
            <profile name="Dane Axe" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="76a9-3202-cd10-6c5d">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">2+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">3+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">3+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">The Dane Axe inflicts a -1 penalty to the target’s defence roll. You strike last with a Dane Axe.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="4501-1b1f-9fd2-f1c3" includeChildSelections="false"/>
          </constraints>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="0b19-ecf2-aeb7-6a63" shared="true" childName="Banner" includeChildSelections="true"/>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="ef59-7677-afdd-3f24" shared="true" childName="Warhorn" includeChildSelections="true"/>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="15"/>
          </costs>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="20" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="25" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="30" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <infoGroups>
            <infoGroup name="Dane Axe Rules" id="42f0-9319-cdfb-b3cd" hidden="false">
              <rules>
                <rule name="Bulky" id="7519-aa17-6373-12b3" hidden="false">
                  <description>A figure wielding a Dane axe can’t use their shield AND their weapon in the same round of melee combat. It has to choose which one to use, whether to raise their shield or swing their axe.</description>
                </rule>
                <rule name="Sundering" id="0afe-4bf4-d0c4-0288" hidden="false">
                  <description>In addition, Dane axes are so powerful that they modify the target’s defence with a -1 penalty to its defence rolls against attacks with a Dane axe (see the asterisks in the Melee To Hit table).</description>
                </rule>
                <rule name="Unwieldy" id="072f-90ee-e323-5e1f" hidden="false">
                  <description>The Dane Axe overrules simultaneous melee and instead always strikes last – except in the turn you charge with it. Therefore, a warrior with a Dane axe that is struck down by his enemy can’t retaliate before death claims him – unless it’s in the midst of a glorious charge!</description>
                </rule>
              </rules>
            </infoGroup>
          </infoGroups>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Bare hands" hidden="false" id="c5dd-c2b5-9c80-90f0" sortIndex="-1">
          <profiles>
            <profile name="Bare hands" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="4a70-6f46-7ed7-b18d">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">8+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">9+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">9+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">-</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="d70c-3153-60ca-892a" includeChildSelections="false" automatic="true"/>
          </constraints>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Hasta" hidden="true" id="cf44-a98d-2ce5-a714" sortIndex="5">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="85fa-e7dd-5cfe-ce01" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Hasta" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="b756-117c-9f35-0a59">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">4+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">5+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">5+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">Can be used as a Javelin in the shooting phase.</characteristic>
              </characteristics>
            </profile>
            <profile name="Javelin" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="a215-f6a1-bebf-f528">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">6&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">4+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">5+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">5+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">-</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="8&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <comment>ranged</comment>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="15" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
              </conditions>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Kontos" hidden="true" id="4585-2b14-c647-6d4d" sortIndex="6">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="2857-1a21-329c-c12e" includeChildSelections="false"/>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="a584-5c67-c458-dd9d" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Kontos" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="0fdb-feab-ebbd-d581">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">3+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">4+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">4+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">A cavalryman charging with a kontos inflicts a -1 penalty on their target’s defence roll.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="20" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                  </conditions>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="1" field="a584-5c67-c458-dd9d">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
              </conditions>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="15"/>
          </costs>
          <rules>
            <rule name="Kontos" id="4faa-2b86-c6e4-01e8" hidden="false">
              <description>The kontos is a long cavalry spear wielded in two hands. It can be equipped alongside a hand weapon..


When a rider with a kontos charges an enemy, the impact is so powerful that the target takes a -1 penalty to its defence rolls. The rider must always roll an attack against each other enemy (and friendly) figure in contact with them AND/OR the target too, but these additional figures take no penalty to their defence rolls.


In addition, the impact of a kontos charge is so powerful that the target can’t attack back this turn – they’re too busy riding out this devastating charge.


Resolve the melee immediately after the charge. First resolve the kontos’ effect on the initial target, with the -1 penalty to the target’s defence rolls. Then, resolve its impact on the other figures in the melee who don’t have a penalty to defence.


Once engaged, a cataphract can no longer use their kontos and must change weapons.


The kontos can be used again during the rider’s next charge.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Lasso" hidden="true" id="9c88-7bbe-a35a-5909" sortIndex="7">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="e063-56da-74ce-b3e5" includeChildSelections="false"/>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="b61f-aacb-4737-569a" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Lasso" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="8ec9-49ee-a984-bac9">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">6+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">6+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">6+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">If you hit, cancel the enemy attack.

Lassos can only be used by mounted figures. A cavalry figure who starts fighting on foot can no longer use its lasso.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <comment>special</comment>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="1" field="b61f-aacb-4737-569a">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Two Hand Weapons" hidden="true" id="5a39-8c7e-613f-862d" sortIndex="3">
          <profiles>
            <profile name="Two Hand Weapons" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="3b6f-d7ef-e015-1a26">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">3+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">4+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">4+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">Having two hand weapons gives this model an extra attack.</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="Sabre" field="name">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="5+" field="24af-bc22-9d7a-7846">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="5+" field="b570-92f0-a14a-f39b">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="self" shared="true" id="20c8-eeaf-6703-25f8" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition type="lessThan" value="1" field="selections" scope="parent" childId="823a-1dfd-e85b-a645" shared="true" childName="Shield" includeChildSelections="true"/>
                        <condition type="lessThan" value="1" field="selections" scope="parent" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                        <condition type="lessThan" value="1" field="selections" scope="parent" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                        <condition type="lessThan" value="1" field="selections" scope="parent" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                    <conditionGroup type="count" min="2" max="2">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain" includeChildSelections="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Pike" hidden="true" id="3bdb-0e11-2cb9-e4fd" sortIndex="8">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="7cb8-625d-5800-0500" includeChildSelections="false"/>
          </constraints>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
            </modifierGroup>
          </modifierGroups>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
          <profiles>
            <profile name="Pike" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="661b-7b64-4653-225f">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">4+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">5+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">5+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">A pike inflicts a -1 penalty to the enemy’s defence rolls.

A pike also inflicts a -1 penalty to its bearer’s defence rolls against both melee and shooting attacks.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
        </selectionEntry>
      </selectionEntries>
      <constraints>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="a56c-fc29-afec-b6d6" includeChildSelections="false"/>
        <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="f112-2730-8551-011f" includeChildSelections="false"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="-1" field="a56c-fc29-afec-b6d6">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="a638-5e21-8172-d006" shared="true" childName="Bők"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="2" field="a56c-fc29-afec-b6d6">
          <conditionGroups>
            <conditionGroup type="and">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse"/>
                <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="2" field="a56c-fc29-afec-b6d6">
          <conditionGroups>
            <conditionGroup type="and">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="03f9-3c25-1bff-a4ef" shared="true" childName="Hand Weapon"/>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="8334-ccc2-7566-7812" shared="true" childName="Dane Axe"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="a9b5-1198-781f-a9d1" shared="true" childName="Huscarl"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="2" field="a56c-fc29-afec-b6d6">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="2" field="f112-2730-8551-011f">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
    </selectionEntryGroup>
    <selectionEntryGroup name="Ranged Weapons" id="1a12-5d72-5bb7-034c" hidden="false" sortIndex="2" collapsible="true">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Sling" hidden="false" id="7d94-a1f1-3625-a86b" sortIndex="1">
          <profiles>
            <profile name="Sling" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="2a9a-97de-0d8b-ad9d">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">15&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">6+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">6+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">6+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">-</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="17&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="d717-8f8a-6b0a-dcc1" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
          </costs>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="add" value="{this} may not be used while on horseback!" field="info">
              <conditionGroups>
                <conditionGroup type="count" min="2">
                  <conditions>
                    <condition type="notInstanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                    <condition type="atLeast" value="1" field="selections" scope="parent" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="false"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="2" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="10" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="0" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="459c-c87d-e25f-2e45" shared="true" childName="WELSH"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Crossbow" hidden="true" id="300f-ce66-63c2-3be1" sortIndex="4">
          <profiles>
            <profile name="Crossbow" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="1af3-0fad-62a7-5702">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">20&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">All</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">3+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">4+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">4+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">A crossbow shot inflicts a -1 penalty to the opponent’s defence roll.</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="22&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
                <modifier type="append" value="Crossbows are only available to the Picts, who used it as a weapon of hunting and war." field="705d-1814-ed63-1c1a" join=". "/>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="2783-42f8-13d9-8aaa" includeChildSelections="false"/>
          </constraints>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="35" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="25" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="30" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                  </conditions>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a1bd-1997-69e7-0bdf" shared="true" childName="GENERIC"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="add" value="{this} may not be used while on horseback!" field="info">
              <conditionGroups>
                <conditionGroup type="count" min="1">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="parent" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="false"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Javelin" hidden="false" id="7548-ff61-69e9-5fd8" sortIndex="2">
          <profiles>
            <profile name="Javelin" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="b42c-0961-0984-8f0d">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">6&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">4+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">5+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">5+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">-</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="8&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="a1dd-76a6-41cc-bdaf" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="0" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="459c-c87d-e25f-2e45" shared="true" childName="WELSH"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="5" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="15" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Bow" hidden="false" id="698f-3316-7448-aed2" sortIndex="3">
          <profiles>
            <profile name="Bow" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="c274-d138-790f-acf6">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">20&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">Half</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">4+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">5+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">5+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">-</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="22&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="30&quot;" field="9775-d55d-f35e-0a05">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="32&quot;" field="9775-d55d-f35e-0a05">
                  <conditionGroups>
                    <conditionGroup type="count" min="2" max="2">
                      <conditions>
                        <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="Composite Bow" field="name">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="e66a-0090-6104-6551" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="20"/>
          </costs>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="Composite Bow" field="name">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="add" value="{this} may not be used while on horseback!" field="info">
              <conditionGroups>
                <conditionGroup type="count" min="2">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="parent" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="false"/>
                  </conditions>
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="notInstanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                        <condition type="notInstanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                        <condition type="notInstanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                        <condition type="notInstanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="25" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="35" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="40" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="30" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <infoGroups>
            <infoGroup name="Bow Rules" id="44e1-f334-da7a-68b7" hidden="false">
              <rules>
                <rule name="Volley Fire" id="4de1-1756-d202-13d1" hidden="false">
                  <description>Volley fire can be used by 4 or more figures with bows in a group. None of the archers in the group can have moved this turn. A group is formed when all the archers are within 2” of at least one other archer in the group.


1. During the shooting phase, choose a point on the gaming table within line of sight of at least one archer in the group. This becomes the volley fire’s target point. Place a volley fire marker on that point (you can find them on the Pillage website).


2. Measure the distance from the marker to the closest archer:
• If the distance is further than the bow’s range, the volley fire fails.
• If the distance is equal to or less than the weapon’s range, all the archers fire their arrows at the marker. You don’t need to make an ordinary roll to hit; all the shots automatically succeed. None of the archers can shoot again this turn.


3. Each figure – both enemy and allied – within a 3” radius of the volley fire marker immediately suffers a hit on a roll of a 6. Defence rolls are possible. This 3” radius increases by +1” for each additional shooter in the group after the fourth.


4. During the next movement phase, the area within a 6” radius of the volley fire marker counts as difficult terrain. The warriors are too busy ducking their heads as they tiptoe through, afraid that a devastating rain of arrows is about to fall on their heads. Remove the volley fire marker once everyone’s movement phase is over.</description>
                </rule>
              </rules>
            </infoGroup>
          </infoGroups>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Plumbata" hidden="true" id="55e5-2ee4-445e-359a" sortIndex="7">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="5537-1345-37e4-29c2" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Plumbata" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="bd2e-2a3b-7d99-0b0c">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">8&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">5+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">6+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">6+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">Can only be used via Closing shots. it is not affected by the -1 to hit for either penalty associated with closing shots or long range.</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="10&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="10" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="add" value="{this} may not be used while on horseback!" field="info">
              <conditionGroups>
                <conditionGroup type="count" min="1">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="parent" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="false"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Angon" hidden="true" id="8ecd-c984-33f9-e6d6" sortIndex="5">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="07b4-d74c-b49d-f37e" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Angon" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="e246-8cd9-faac-46ad">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">6&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">4+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">5+*</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">4+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">*If the target has a shield, the Angon hits on a 4+.</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="8&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="15" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="5" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="add" value="{this} may not be used while on horseback!" field="info">
              <conditionGroups>
                <conditionGroup type="count" min="1">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="parent" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="false"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Francisca" hidden="true" id="4c5c-fc8c-d2d7-468b" sortIndex="6">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="44bc-589a-f4c4-8ec0" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Francisca" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="fb42-33f2-0319-a5a4">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">6&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">4+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">5+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">5+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">Can only be used after declaring a charge.
-1 penalty on the target’s defence roll.</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="8&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="add" value="{this} may not be used while on horseback!" field="info">
              <conditionGroups>
                <conditionGroup type="count" min="1">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="parent" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="false"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <constraints>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="de8e-e641-c1ab-ad1a" includeChildSelections="false"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="true" field="hidden">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="8a90-9bee-5758-3283" shared="true" childName=" Berserker"/>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="0b19-ecf2-aeb7-6a63" shared="true" childName="Banner" includeChildSelections="true"/>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="ef59-7677-afdd-3f24" shared="true" childName="Warhorn" includeChildSelections="true"/>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="a9b5-1198-781f-a9d1" shared="true" childName="Huscarl"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
    </selectionEntryGroup>
    <selectionEntryGroup name="Special Equipment" id="45d7-2019-f71e-4c8f" hidden="false" sortIndex="3" collapsible="true">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Warhounds" hidden="true" id="aebe-2db7-ada2-bd68">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="8452-fcd4-2ebd-8d84" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="60"/>
          </costs>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a1bd-1997-69e7-0bdf" shared="true" childName="GENERIC"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="10c5-139d-8f93-83fe" shared="true" childName="VIKINGS (NORSE)"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="40" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a1bd-1997-69e7-0bdf" shared="true" childName="GENERIC"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <categoryLinks>
            <categoryLink name="Pack Master" hidden="false" id="4caa-c89f-99c7-413a" targetId="4967-c713-22c5-2fb3" primary="false"/>
          </categoryLinks>
          <selectionEntries>
            <selectionEntry type="upgrade" import="true" name="Hounds" hidden="false" id="a1ed-c6ad-658b-2b8d">
              <modifiers>
                <modifier type="increment" value="1" field="0ec4-f8ad-39b5-01f1-min">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="force" childId="7229-a0c1-30a9-32a8" shared="true" childName="Dog Trainer" includeChildSelections="true"/>
                  </conditions>
                </modifier>
                <modifier type="increment" value="1" field="0ec4-f8ad-39b5-01f1-max">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="force" childId="7229-a0c1-30a9-32a8" shared="true" childName="Dog Trainer" includeChildSelections="true"/>
                  </conditions>
                </modifier>
              </modifiers>
              <profiles>
                <profile name="Hounds" typeId="3d83-c900-0de7-bd4c" typeName="Model" hidden="false" id="7851-c3e6-9d8b-70de">
                  <characteristics>
                    <characteristic name="Movement" typeId="b5b3-773d-1e7a-74a0">8&quot;</characteristic>
                    <characteristic name="Armour Class" typeId="77f6-a713-5232-623d">UA: 6+</characteristic>
                    <characteristic name="HP" typeId="8568-7376-bcc1-2a56">1</characteristic>
                    <characteristic name="Attacks" typeId="0f88-76a8-fe85-d842">1</characteristic>
                  </characteristics>
                </profile>
              </profiles>
              <constraints>
                <constraint type="min" value="3" field="selections" scope="parent" shared="true" id="0ec4-f8ad-39b5-01f1-min" includeChildSelections="false" automatic="true"/>
                <constraint type="max" value="3" field="selections" scope="parent" shared="true" id="0ec4-f8ad-39b5-01f1-max" includeChildSelections="false" automatic="true"/>
              </constraints>
            </selectionEntry>
          </selectionEntries>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Banner" hidden="true" id="0b19-ecf2-aeb7-6a63">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="5fd3-b60c-8029-dd67" includeChildSelections="true"/>
          </constraints>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="8a90-9bee-5758-3283" shared="true" childName="Berserker" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a1bd-1997-69e7-0bdf" shared="true" childName="GENERIC"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="10c5-139d-8f93-83fe" shared="true" childName="VIKINGS (NORSE)"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="45" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="20" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="60" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="30" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                  </conditions>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <infoGroups>
            <infoGroup name="Banner Rules" id="909d-8571-83d8-13f9" hidden="false">
              <rules>
                <rule name="Courage" id="2ad4-9e57-63fd-116d" hidden="false">
                  <description>A figure within 6” of a banner (including the banner-bearer) can re-roll 1s when rolling to hit in melee.


In addition, all figures within 6” of a banner (including the banner-bearer) automatically succeed on their morale rolls.


A banner is a heavy and cumbersome artefact, so a figure carrying a banner has a -1 penalty to its defence rolls.</description>
                </rule>
              </rules>
            </infoGroup>
          </infoGroups>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Warhorn" hidden="true" id="6684-efaf-9504-40c1">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="d68b-c3d9-715c-abcc" includeChildSelections="true"/>
          </constraints>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="8a90-9bee-5758-3283" shared="true" childName="Berserker" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="10c5-139d-8f93-83fe" shared="true" childName="VIKINGS (NORSE)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a1bd-1997-69e7-0bdf" shared="true" childName="GENERIC"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="459c-c87d-e25f-2e45" shared="true" childName="WELSH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="20" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="459c-c87d-e25f-2e45" shared="true" childName="WELSH"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="40" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="30" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="25" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a1bd-1997-69e7-0bdf" shared="true" childName="GENERIC"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <infoGroups>
            <infoGroup name="Warhorn Rules" id="0715-5cc2-7aa0-9a6c" hidden="false">
              <rules>
                <rule name="Motivation" id="9757-9d80-38b4-6b60" hidden="false">
                  <description>A hornblower figure increases the movement of allied infantry and cavalry figures within 6” of it by +2”. The hornblower figure itself is not affected by the warhorn’s effects.


In addition, any friendly figure within 6” of a hornblower automatically passes its morale rolls.</description>
                </rule>
              </rules>
            </infoGroup>
          </infoGroups>
        </selectionEntry>
        <selectionEntry type="model" import="true" name="Horse" hidden="true" id="4c37-ffb6-cffc-4e32" subType="mount">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="2599-5714-0198-9d98" includeChildSelections="false"/>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="cfec-0cf3-27a5-defe" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Horse" typeId="3d83-c900-0de7-bd4c" typeName="Model" hidden="false" id="bd48-a4f2-3bd6-7d9c">
              <characteristics>
                <characteristic name="Movement" typeId="b5b3-773d-1e7a-74a0">14</characteristic>
                <characteristic name="Armour Class" typeId="77f6-a713-5232-623d">UA: 6+</characteristic>
                <characteristic name="HP" typeId="8568-7376-bcc1-2a56">1</characteristic>
                <characteristic name="Attacks" typeId="0f88-76a8-fe85-d842"/>
              </characteristics>
              <modifiers>
                <modifier type="set" value="SA: 5+" field="77f6-a713-5232-623d">
                  <conditionGroups>
                    <conditionGroup type="count" min="1">
                      <conditions>
                        <condition type="atLeast" value="1" field="selections" scope="roster" childId="f6d5-3da6-b21f-1827" shared="true" childName="Warhorses" includeChildSelections="true" includeChildForces="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="append" value="&quot;" field="b5b3-773d-1e7a-74a0" join=""/>
                <modifier type="increment" value="2" field="b5b3-773d-1e7a-74a0">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="353a-edb6-b78c-fc19" shared="true" childName="Steppe Mobility" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="FA: 4+" field="77f6-a713-5232-623d">
                  <conditionGroups>
                    <conditionGroup type="count" min="1">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="12&quot;" field="b5b3-773d-1e7a-74a0">
                  <conditionGroups>
                    <conditionGroup type="count" min="1">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="a9b5-1198-781f-a9d1" shared="true" childName="Huscarl" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a1bd-1997-69e7-0bdf" shared="true" childName="GENERIC"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="459c-c87d-e25f-2e45" shared="true" childName="WELSH"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="a638-5e21-8172-d006" shared="true" childName="Bők" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi" includeChildSelections="true"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="1" field="cfec-0cf3-27a5-defe">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="40" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="count" min="2" max="2">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="25" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="20" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="35" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="459c-c87d-e25f-2e45" shared="true" childName="WELSH"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <infoGroups>
            <infoGroup name="Cavalry Rules" id="9b8a-abfa-085c-06b0" hidden="false">
              <rules>
                <rule name="Cavalry and Difficult Terrain" id="05b2-780c-406b-30a9" hidden="false">
                  <description>Difficult terrain has a greater effect on cavalry than on infantry. When a cavalry figure wants to move within an area of difficult terrain, every 1” crossed counts as 4” of movement.
In addition, cavalry get no charge bonus when fighting inside difficult terrain.</description>
                </rule>
                <rule name="Cavalry and Passable Obstacles" id="2fc2-c31b-f8be-fa92" hidden="false">
                  <description>Cavalry figures can move over passable obstacles in the same way as infantry figures, and take the same -2” penalty to their move. However, they also risk falling as they cross.


**Fall Roll**
When you cross the obstacle, roll 1d6 and compare the result to the following table:


• 1 — **Fall**
Your rider miserably fails to get over the obstacle; their horse rears and throws them. Your rider becomes an infantry figure with all the same equipment, and they suffer an improvised weapon attack with no defence roll allowed.


• 2 — **Close One**
The horse whinnies, paws at the ground, and stops just before the obstacle. Your figure’s movement phase ends in contact with the obstacle.


• 3 — **Success**
Your rider narrowly manages the jump. Their movement ends in contact with the other side of the obstacle.


• 4-6 — **Skilled Horseman**
Your rider succeeds masterfully. If they still have any movement left after crossing the obstacle, they can end their move normally.</description>
                </rule>
                <rule name="Cavalry Charge" id="32a7-ea6b-0df7-4e32" hidden="false">
                  <description>Their charge is so powerful that it modifies the defence of enemy infantry figures in contact, inflicting a -1 penalty to their defence rolls in melee that turn. This penalty doesn’t apply to cavalry figures.</description>
                </rule>
                <rule name="Cavalry Lances" id="ae7d-7410-cb83-2837" hidden="false">
                  <description>When a cavalry figure with a spear charges, melee in the same turn isn’t simultaneous. Instead, the rider strikes first. If its enemy is destroyed, it can’t strike back against the rider.</description>
                </rule>
                <rule name="Dane Axes on Horseback" id="0a0e-7075-5f59-6f4c" hidden="false">
                  <description>When a rider is equipped with a Dane axe, count the axe as a hand weapon during melee. It still can’t be used with a shield.</description>
                </rule>
                <rule name="Moving Cavalry" id="bf97-b304-f4c8-7261" hidden="false">
                  <description>Cavalry figures move in the same way as infantry. They can cross obstacles and are affected by difficult terrain, narrow gaps, and roads as described in the terrain section
However, cavalry can’t make special moves. That means they can’t jump, climb, or swim.</description>
                </rule>
                <rule name="Penalty vs Cavalry" id="6e98-1e10-13a3-b14d" hidden="false">
                  <description>All enemies armed with any weapon other than a spear suffer a -1 penalty to their rolls to hit cavalry figures.</description>
                </rule>
                <rule name="Shooting at Cavalry" id="ca65-e00e-6fd3-3f55" hidden="false">
                  <description>Figures shooting at cavalry get a +1 bonus to their to hit rolls against both riders and mounts.


Target Roll


Before resolving the shooting or melee attack, the attacker rolls 1d6.


• 1-3 — **The attack targets the mount**
Make the roll to hit normally. Bear in mind that a mount always has 1 hit point and an armour class of Unarmoured (UA).


• 4-6 — **The attack targets the rider**
Make the roll to hit normally, using the rider’s armour class.If the rider falls to zero hit points, the whole figure – mount included – is removed from the table and counts as a casualty. We assume that the warhorse was seized by panic and fled the battlefield.</description>
                </rule>
                <rule name="Shooting From Horseback" id="f2ab-e026-c81f-8488" hidden="false">
                  <description>Cavalry figures can only shoot with javelins. That means that mounted models can never use slings, bows, or crossbows. They can carry them, but can’t use them until they have dismounted and become infantry figures. 


The rules on shooting apply normally to cavalry models.</description>
                </rule>
                <rule name="Knock Down" id="4bdd-1ac5-7c32-b184" hidden="false">
                  <description>In its movement phase, a cavalry figure can try to disengage from an existing melee by getting its horse to push away its enemy or enemies.


**Knock Back Roll**


Roll 1d6 for your knock back roll:
• 1 — **Crushing failure**
The mount bucks and bolts, dropping its rider to the ground and fleeing the battlefield. Your rider loses their mount, falls, and finds themselves on foot.
To represent the damage from the fall, make an improvised weapon attack against the rider with no defence roll.


• 2-4 — **Failure**
The knock back has no effect and the melee continues normally.


• 5-6 — **Success**
Push all figures in contact with the cavalry figure 1” away from it. The cavalry figure is now free to use its movement phase normally, but can’t charge. Figures that can’t be pushed back because of the terrain around them immediately suffer an improvised weapon attack. They can’t hit back.</description>
                </rule>
                <rule name="Dismounting" id="7ab8-77d9-627b-4843" hidden="false">
                  <description>Riders can dismount and abandon their horses. However, this can only happen at the start of their movement phase. 


The player controlling the cavalry figure declares it is dismounting and replaces it with an infantry figure carrying the same equipment and armour.


Dismounting uses up a rider’s whole movement. They can’t move again for the rest of the turn.


When a rider dismounts, their horse immediately quits the battlefield – we presume it flees the clamour of battle.</description>
                </rule>
              </rules>
            </infoGroup>
          </infoGroups>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
  </sharedSelectionEntryGroups>
  <profileTypes>
    <profileType name="Model" id="3d83-c900-0de7-bd4c" hidden="false" kind="model" sortIndex="1">
      <characteristicTypes>
        <characteristicType name="Movement" id="b5b3-773d-1e7a-74a0" defaultValue="8" kind="annotation"/>
        <characteristicType name="Armour Class" id="77f6-a713-5232-623d" defaultValue="UA: 6+"/>
        <characteristicType name="HP" id="8568-7376-bcc1-2a56" defaultValue="1"/>
        <characteristicType name="Attacks" id="0f88-76a8-fe85-d842" defaultValue="1"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Ranged Weapon" id="a82a-8570-e498-e2de" hidden="false" kind="weapon" sortIndex="3">
      <characteristicTypes>
        <characteristicType name="Range" id="9775-d55d-f35e-0a05"/>
        <characteristicType name="Movement Penalty" id="7a1b-b6a8-befc-1710" defaultValue="None"/>
        <characteristicType name="UA" id="a80d-86be-21e3-b0d3"/>
        <characteristicType name="SA" id="e00a-0744-8ff9-bf35"/>
        <characteristicType name="FA" id="48bc-033e-f508-5a9b"/>
        <characteristicType name="Special" id="705d-1814-ed63-1c1a" defaultValue="-"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Melee Weapon" id="8b28-1caf-8b57-014c" hidden="false" kind="weapon" sortIndex="2">
      <characteristicTypes>
        <characteristicType name="UA" id="984d-e6d1-a3dd-d52e"/>
        <characteristicType name="SA" id="24af-bc22-9d7a-7846"/>
        <characteristicType name="FA" id="b570-92f0-a14a-f39b"/>
        <characteristicType name="Special" id="c8e2-d135-1e5f-04c6" defaultValue="-"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <sharedProfiles>
    <profile name="New Profile" typeId="3d83-c900-0de7-bd4c" typeName="Model" hidden="false" id="4cd2-c74b-3af2-8d2e">
      <characteristics>
        <characteristic name="Movement" typeId="b5b3-773d-1e7a-74a0">8&quot;</characteristic>
        <characteristic name="Armour Class" typeId="77f6-a713-5232-623d">UA: 6+</characteristic>
        <characteristic name="HP" typeId="8568-7376-bcc1-2a56">1</characteristic>
        <characteristic name="Attacks" typeId="0f88-76a8-fe85-d842">1</characteristic>
      </characteristics>
      <modifierGroups>
        <modifierGroup type="and">
          <comment>Armour</comment>
          <modifiers>
            <modifier type="set" value="FA: 4+" field="77f6-a713-5232-623d">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="c967-0f8d-1f01-0248" shared="true" childName="Armour" includeChildSelections="true"/>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="823a-1dfd-e85b-a645" shared="true" childName="Shield" includeChildSelections="true"/>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="2503-f075-b4f3-a83c" shared="true" childName="Armour" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="SA: 5+" field="77f6-a713-5232-623d">
              <conditionGroups>
                <conditionGroup type="count" min="1" max="1">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="c967-0f8d-1f01-0248" shared="true" childName="Armour" includeChildSelections="true"/>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="823a-1dfd-e85b-a645" shared="true" childName="Shield" includeChildSelections="true"/>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="2503-f075-b4f3-a83c" shared="true" childName="Armour" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="FA" field="77f6-a713-5232-623d">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="5fe9-1d08-5b75-fa8c" shared="true" childName="Supply Wagon"/>
              </conditions>
            </modifier>
          </modifiers>
        </modifierGroup>
        <modifierGroup type="and">
          <comment>HP</comment>
          <modifiers>
            <modifier type="set" value="2" field="8568-7376-bcc1-2a56">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="8a90-9bee-5758-3283" shared="true" childName=" Berserker"/>
              </conditions>
            </modifier>
            <modifier type="set" value="3" field="8568-7376-bcc1-2a56">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain"/>
              </conditions>
            </modifier>
            <modifier type="set" value="4" field="8568-7376-bcc1-2a56">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain"/>
                    <condition type="atLeast" value="1" field="selections" scope="parent" childId="f845-186e-c361-9989" shared="true" childName="Force of Nature" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </modifierGroup>
        <modifierGroup type="and">
          <comment>Name</comment>
          <modifiers>
            <modifier type="set" value="Chieftain" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Bők" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="a638-5e21-8172-d006" shared="true" childName="Bők"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Warrior" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Kataphraktoi" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Berserker" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="8a90-9bee-5758-3283" shared="true" childName="Berserker"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Huscarl" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="a9b5-1198-781f-a9d1" shared="true" childName="Huscarl"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Wagon" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="5fe9-1d08-5b75-fa8c" shared="true" childName="Supply Wagon"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Healer" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="12e9-c1e9-1b4b-b9d9" shared="true" childName="Healer"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Cataphract" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Pack Master" field="name">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Bannerman" field="name">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="0b19-ecf2-aeb7-6a63" shared="true" childName="Banner" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
        </modifierGroup>
        <modifierGroup type="and">
          <comment>Movement</comment>
          <modifiers>
            <modifier type="decrement" value="1" field="b5b3-773d-1e7a-74a0">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="2503-f075-b4f3-a83c" shared="true" childName="Armour" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="823a-1dfd-e85b-a645" shared="true" childName="Shield" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="decrement" value="1" field="b5b3-773d-1e7a-74a0">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="2503-f075-b4f3-a83c" shared="true" childName="Armour" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="823a-1dfd-e85b-a645" shared="true" childName="Shield" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="6&quot;" field="b5b3-773d-1e7a-74a0">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="5fe9-1d08-5b75-fa8c" shared="true" childName="Supply Wagon"/>
              </conditions>
            </modifier>
          </modifiers>
        </modifierGroup>
        <modifierGroup type="and">
          <comment>Attacks</comment>
          <modifiers>
            <modifier type="increment" value="1" field="0f88-76a8-fe85-d842">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="5a39-8c7e-613f-862d" shared="true" childName="Two Hand Weapons" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="increment" value="1" field="0f88-76a8-fe85-d842">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="append" value="*" field="0f88-76a8-fe85-d842" join="">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="5a39-8c7e-613f-862d" shared="true" childName="Two Hand Weapons" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
        </modifierGroup>
      </modifierGroups>
    </profile>
  </sharedProfiles>
  <sharedSelectionEntries>
    <selectionEntry type="upgrade" import="true" name="Shield" hidden="false" id="823a-1dfd-e85b-a645" sortIndex="-1">
      <constraints>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="b9e0-e747-6176-5071" includeChildSelections="false"/>
        <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="6347-ba0a-c1f8-71a1" includeChildSelections="false"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="true" field="hidden">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="add" value="Cannot use a Shield and Dane Axe in Melee, only one or the other. " field="info">
          <conditionGroups>
            <conditionGroup type="and">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="parent" childId="823a-1dfd-e85b-a645" shared="true" childName="Shield" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="parent" childId="8334-ccc2-7566-7812" shared="true" childName="Dane Axe" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="1" field="6347-ba0a-c1f8-71a1">
          <conditions>
            <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
          </conditions>
        </modifier>
      </modifiers>
      <costs>
        <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
      </costs>
      <modifierGroups>
        <modifierGroup type="and">
          <comment>COSTS</comment>
          <modifiers>
            <modifier type="set" value="10" field="4163-7d26-88e5-be23">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
              </conditions>
            </modifier>
          </modifiers>
        </modifierGroup>
      </modifierGroups>
      <rules>
        <rule name="Raising a Shield" id="4d03-01ca-ab1f-4f66" hidden="false">
          <description>In melee, infantry figures – not cavalry – can choose not to fight and instead defend themselves behind their shield (if they have one). This lets them stall for time as they await reinforcements.


Announce that you are raising your shield before the attacker rolls to hit.


This gives you a +1 bonus to your defence roll. A figure that raises its shield isn’t allowed to attack during the same melee phase.


A warrior can’t raise their shield if they’re already in a shieldwall formation.</description>
        </rule>
      </rules>
    </selectionEntry>
    <selectionEntry type="upgrade" import="true" name="Armour" hidden="false" id="2503-f075-b4f3-a83c" sortIndex="-1">
      <constraints>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="286a-be3b-d4c3-3591" includeChildSelections="false"/>
        <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="1740-e997-c399-c929" includeChildSelections="false"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="true" field="hidden">
          <conditionGroups>
            <conditionGroup type="count" min="2">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="1" field="1740-e997-c399-c929">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi"/>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="true" field="hidden">
          <conditionGroups>
            <conditionGroup type="count" min="1">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="459c-c87d-e25f-2e45" shared="true" childName="WELSH"/>
                <condition type="atLeast" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <costs>
        <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
      </costs>
      <modifierGroups>
        <modifierGroup type="and">
          <comment>COSTS</comment>
          <modifiers>
            <modifier type="set" value="10" field="4163-7d26-88e5-be23">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="30" field="4163-7d26-88e5-be23">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="15" field="4163-7d26-88e5-be23">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </modifierGroup>
      </modifierGroups>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Wagons" hidden="false" id="a5e8-b14b-1d77-5bf5" sortIndex="9">
      <categoryLinks>
        <categoryLink name="Supply Wagon" hidden="false" id="f07f-1b53-6359-fdab" targetId="5fe9-1d08-5b75-fa8c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Wagon" hidden="false" id="9853-687f-b6a9-faf4">
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="60" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="50" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="40" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a1bd-1997-69e7-0bdf" shared="true" childName="GENERIC"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="30" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                  </conditions>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <modifiers>
            <modifier type="set" value="1" field="defaultAmount"/>
          </modifiers>
        </selectionEntry>
      </selectionEntries>
      <rules>
        <rule name="Supply" id="6e9a-307e-9efb-7214" hidden="false">
          <description>While an army contains a supply wagon, figures equipped with javelins/Angons can shoot twice instead of once whenever they are able to shoot.</description>
        </rule>
      </rules>
    </selectionEntry>
    <selectionEntry type="model" import="true" name="Chieftain" hidden="false" id="5b79-2a8a-0ca0-4059" sortIndex="1">
      <entryLinks>
        <entryLink import="true" name="Melee Weapons" hidden="false" id="9c9f-8801-70e8-f863" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
        <entryLink import="true" name="Ranged Weapons" hidden="false" id="8f70-6aaa-d146-422d" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
        <entryLink import="true" name="Special Equipment" hidden="false" id="93d3-302e-8296-0382" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
        <entryLink import="true" name="Talents" hidden="false" id="fefa-4721-9bf3-a5a3" type="selectionEntryGroup" targetId="6670-296f-4e21-c004"/>
        <entryLink import="true" name="Armour" hidden="false" id="2e94-c018-4b0b-8743" type="selectionEntry" targetId="2503-f075-b4f3-a83c">
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
          </costs>
        </entryLink>
        <entryLink import="true" name="Shield" hidden="false" id="4fb7-09ca-4c67-ff4a" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
      </entryLinks>
      <modifiers>
        <modifier type="add" value="373d-f121-420b-4837" field="category">
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="163f-1820-848c-271d" field="category">
          <conditionGroups>
            <conditionGroup type="and">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
              <conditions>
                <condition type="lessThan" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="1" field="defaultAmount">
          <conditions>
            <condition type="notInstanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
          </conditions>
        </modifier>
      </modifiers>
      <infoLinks>
        <infoLink name="New Profile" id="0391-43d5-a387-c085" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Warriors" hidden="false" id="2478-7327-3509-6d5f" sortIndex="3">
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Warrior" hidden="false" id="5c39-fa7e-e707-3800">
          <entryLinks>
            <entryLink import="true" name="Shield" hidden="false" id="0c5d-0975-315c-7702" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
            <entryLink import="true" name="Armour" hidden="false" id="0eea-0008-8bd8-de7d" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
            <entryLink import="true" name="Melee Weapons" hidden="false" id="94dd-8122-4358-ad1e" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
            <entryLink import="true" name="Ranged Weapons" hidden="false" id="67ca-618e-40cc-05e0" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
            <entryLink import="true" name="Special Equipment" hidden="false" id="6e8d-f332-17fd-d5fc" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="236f-a8df-204a-9ac0" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="set" value="1" field="defaultAmount"/>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                  <conditions>
                    <condition type="lessThan" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
            </modifierGroup>
          </modifierGroups>
          <selectionEntries>
            <selectionEntry type="upgrade" import="true" name="Armour" hidden="false" id="c967-0f8d-1f01-0248">
              <constraints>
                <constraint type="max" value="0" field="selections" scope="force" shared="true" id="f22d-a7d4-e040-8da2" includeChildSelections="true"/>
                <constraint type="max" value="1" field="selections" scope="self" shared="true" id="83b5-8a97-9403-6cdc" includeChildSelections="false"/>
              </constraints>
              <modifiers>
                <modifier type="increment" value="2" field="f22d-a7d4-e040-8da2">
                  <repeats>
                    <repeat value="1" repeats="1" field="selections" scope="force" childId="5b79-2a8a-0ca0-4059" shared="true" roundUp="false" childName="Chieftain" includeChildSelections="true" includeChildForces="true"/>
                  </repeats>
                </modifier>
              </modifiers>
            </selectionEntry>
          </selectionEntries>
          <categoryLinks>
            <categoryLink name="CHIEFCON" hidden="false" id="d366-df7b-b44d-214d" targetId="d936-c270-e692-1054" primary="false"/>
          </categoryLinks>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Berserkers" hidden="false" id="aaaf-c8ef-3840-8e3f" sortIndex="4">
      <categoryLinks>
        <categoryLink name="Berserker" hidden="false" id="a8b7-2d00-7d82-8aea" targetId="8a90-9bee-5758-3283" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Berserker" hidden="false" id="0579-10d1-5d15-4eab">
          <entryLinks>
            <entryLink import="true" name="Armour" hidden="false" id="9155-0d8f-c56c-44a0" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
            <entryLink import="true" name="Shield" hidden="false" id="5633-606a-d827-567b" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
            <entryLink import="true" name="Melee Weapons" hidden="false" id="a158-3576-b9e4-eebe" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
            <entryLink import="true" name="Ranged Weapons" hidden="false" id="c53f-2e84-7301-ea89" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
            <entryLink import="true" name="Special Equipment" hidden="false" id="15d8-f0fc-63d3-d403" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="1f67-1da9-0986-08b9" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="set" value="1" field="defaultAmount"/>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                  <conditions>
                    <condition type="lessThan" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="50" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a1bd-1997-69e7-0bdf" shared="true" childName="GENERIC"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="10c5-139d-8f93-83fe" shared="true" childName="VIKINGS (NORSE)"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="80" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <categoryLinks>
            <categoryLink name="CHIEFCON" hidden="false" id="9003-0336-5d8f-ac4b" targetId="d936-c270-e692-1054" primary="false"/>
          </categoryLinks>
        </selectionEntry>
      </selectionEntries>
      <infoGroups>
        <infoGroup name="Berserker Rules" id="da56-3344-7cd6-f3ac" hidden="false">
          <rules>
            <rule name="Hallucinogenic Mushrooms" id="9530-8b13-dfc8-e575" hidden="false">
              <description>A berserker figure can choose to ingest hallucinogenic mushrooms. Declare a berserker figure is taking mushrooms at the start of its movement phase. Once ingested, hallucinogenic mushrooms stay in effect until the end of the game, and is now subject to Confusion.


While a berserker is under the effects of hallucinogenic mushrooms, it gets 2 attacks instead of 1.</description>
            </rule>
            <rule name="Confusion" id="26d0-7098-0b67-728d" hidden="false">
              <description>Whenever a berserker figure is under the effects of hallucinogenic mushrooms, make a confusion roll for it before each movement phase. Roll 1d6 and compare the result to the table below:


• 1 — Confused The berserker is rooted to the spot, stupefied, in the thrall of hallucinations and speaking with imaginary Valkyries. If the berserker is already in melee, it can’t attack and makes its defence rolls with a -1 penalty.


• 2-5 — Clear sight Though under a psychotropic spell, the berserker keeps a clear mind and can act normally with its usual additional attack.


• 6 — Bloodthirsty rage The berserker is seized by insane rage. It wants blood! If not already in melee, make a charge towards the closest visible figure (enemy or ally). The charge adds 1d6” instead of 1d3” to the charge distance. If there are no visible figures, the berserker remains in place, as though Confused.</description>
            </rule>
            <rule name="Ferocious Tenacity" id="4ae0-0427-e92e-7919" hidden="false">
              <description>A berserker figure has 2 hit points, and when it attacks, it does so with such terrible violence that its opponent’s defence is quite simply cancelled entirely.</description>
            </rule>
          </rules>
        </infoGroup>
      </infoGroups>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Huscarls" hidden="false" id="493d-4409-9952-8860" sortIndex="5">
      <categoryLinks>
        <categoryLink name="Huscarl" hidden="false" id="c4ba-8d9f-8fb6-f755" targetId="a9b5-1198-781f-a9d1" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Huscarl" hidden="false" id="49d6-e070-57f5-e692">
          <entryLinks>
            <entryLink import="true" name="Armour" hidden="false" id="8732-e4a0-60fa-21fb" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
            <entryLink import="true" name="Shield" hidden="false" id="019a-920e-314d-dd09" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
            <entryLink import="true" name="Melee Weapons" hidden="false" id="ddb6-9b0c-2832-02a4" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
            <entryLink import="true" name="Ranged Weapons" hidden="false" id="2347-658c-ae8b-7fe1" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
            <entryLink import="true" name="Special Equipment" hidden="false" id="ed1e-aef1-1dbb-8834" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="f412-bf5a-d16a-8985" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="set" value="1" field="defaultAmount"/>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                  <conditions>
                    <condition type="lessThan" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="40" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a1bd-1997-69e7-0bdf" shared="true" childName="GENERIC"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <categoryLinks>
            <categoryLink name="CHIEFCON" hidden="false" id="3a03-cc50-334b-da7b" targetId="d936-c270-e692-1054" primary="false"/>
          </categoryLinks>
        </selectionEntry>
      </selectionEntries>
      <infoGroups>
        <infoGroup name="Huscarl Rules" id="88dd-c9d8-759d-c51f" hidden="false">
          <rules>
            <rule name="Forwards!" id="019c-ebcc-ab0f-b421" hidden="false">
              <description>Once per game, a huscarl can inspire the warriors around him. He barks orders and injunctions to his warriors that redouble their courage. At the end of the movement phase, all friendly warriors within 6” of the huscarl (including him) can make an additional move.


A figure can only get one additional move in each game turn. Additional moves can’t be used by figures that already charged this turn, and cannot themselves be used to charge.</description>
            </rule>
            <rule name="Choice of Weapons" id="5c8b-d1c1-1813-3de7" hidden="false">
              <description>In Pillage, Huscarls are among those rare warriors who can carry more than one melee weapon: a two-handed Dane axe and a sword (hand weapon). 


The player can choose which weapon to swing at their enemy in each melee.</description>
            </rule>
            <rule name="Dane Axe Mastery." id="c93e-3e9d-9395-f111" hidden="false">
              <description>Huscarls have perfected wielding the Dane axe – they take no penalty to hit when wielding this weapon.</description>
            </rule>
          </rules>
        </infoGroup>
      </infoGroups>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Healers" hidden="false" id="5abc-f2dd-4427-94a9" sortIndex="8">
      <categoryLinks>
        <categoryLink name="Healer" hidden="false" id="ef1d-9012-d084-15c5" targetId="12e9-c1e9-1b4b-b9d9" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Healer" hidden="false" id="bf8f-d34a-9e6e-5ae5">
          <entryLinks>
            <entryLink import="true" name="Improvised Weapon" hidden="false" id="d3e4-5d34-5e27-4ac2" type="selectionEntry" targetId="2fef-ac13-0216-9c7e"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="3d3c-5200-01a0-7ecb" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="set" value="1" field="defaultAmount"/>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                  <conditions>
                    <condition type="lessThan" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
              <modifiers>
                <modifier type="set" value="10" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="30" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="a1bd-1997-69e7-0bdf" shared="true" childName="GENERIC"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="10c5-139d-8f93-83fe" shared="true" childName="VIKINGS (NORSE)"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="459c-c87d-e25f-2e45" shared="true" childName="WELSH"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="set" value="40" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="35" field="4163-7d26-88e5-be23">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="25" field="4163-7d26-88e5-be23">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                        <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <categoryLinks>
            <categoryLink name="CHIEFCON" hidden="false" id="b363-576f-9dc4-b890" targetId="d936-c270-e692-1054" primary="false"/>
          </categoryLinks>
        </selectionEntry>
      </selectionEntries>
      <rules>
        <rule name="Healing Hands" id="35ab-1cb0-add8-7ad3" hidden="false">
          <description>A healer can cancel a wound taken by one of your warriors. To do so, the healer must be in base-to-base contact with the figure receiving the wound. At the moment the wound is inflicted, roll 1d6: the wound is cancelled on a 5+.


A healer can be used on several figures during the same turn, as long as the healer is in base-to-base contact with all the figures they attempt to heal. On the other hand, a figure can only be healed once per game turn, even if several healers are in base-to-base contact with it.</description>
        </rule>
      </rules>
    </selectionEntry>
    <selectionEntry type="model" import="true" name="Bők" hidden="false" id="e5a3-64d9-2534-e409" sortIndex="2">
      <entryLinks>
        <entryLink import="true" name="Armour" hidden="false" id="c4ab-74c3-be34-6d9c" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
        <entryLink import="true" name="Shield" hidden="false" id="09a5-02bc-bec2-5ba3" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
        <entryLink import="true" name="Melee Weapons" hidden="false" id="40ec-6ead-5c4d-7d02" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
        <entryLink import="true" name="Ranged Weapons" hidden="false" id="4b73-5aa1-c141-cc1e" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
        <entryLink import="true" name="Special Equipment" hidden="false" id="614f-68fb-932e-e1ad" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
        <entryLink import="true" name="Talents" hidden="false" id="f3b0-d2d4-10fa-64b9" type="selectionEntryGroup" targetId="6670-296f-4e21-c004"/>
      </entryLinks>
      <modifiers>
        <modifier type="add" value="373d-f121-420b-4837" field="category">
          <conditions>
            <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="163f-1820-848c-271d" field="category">
          <conditionGroups>
            <conditionGroup type="and">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
              <conditions>
                <condition type="lessThan" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <infoLinks>
        <infoLink name="New Profile" id="7cdc-3d28-3754-ff84" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Kataphraktois" hidden="false" id="99e5-d364-e70b-b37f" sortIndex="7">
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Kataphraktoi" hidden="false" id="94a6-9ee0-c5fc-7642">
          <entryLinks>
            <entryLink import="true" name="Armour" hidden="false" id="b5ea-8fb0-f19b-d19d" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
            <entryLink import="true" name="Shield" hidden="false" id="a1cc-c656-9c70-dee7" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
            <entryLink import="true" name="Melee Weapons" hidden="false" id="3788-cc60-ad55-77c3" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
            <entryLink import="true" name="Ranged Weapons" hidden="false" id="5d00-c231-d5ce-594e" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
            <entryLink import="true" name="Special Equipment" hidden="false" id="ab21-7b9a-dc3d-4c80" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="e677-4dc6-9d7b-9b87" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="set" value="1" field="defaultAmount"/>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                  <conditions>
                    <condition type="lessThan" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
            </modifierGroup>
          </modifierGroups>
          <categoryLinks>
            <categoryLink name="CHIEFCON" hidden="false" id="f557-8b99-d4c8-e8a0" targetId="d936-c270-e692-1054" primary="false"/>
          </categoryLinks>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Cataphracts" hidden="false" id="3fae-340a-ff4a-27e4" sortIndex="6">
      <categoryLinks>
        <categoryLink name="Cataphracts" hidden="false" id="8373-6a91-7142-d9c3" targetId="9106-4ef0-0942-8c50" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Cataphract" hidden="false" id="4c07-8146-72b6-4368">
          <entryLinks>
            <entryLink import="true" name="Armour" hidden="false" id="0cdd-fb73-4e6a-4d99" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
            <entryLink import="true" name="Shield" hidden="false" id="c4e7-a720-a259-eec7" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
            <entryLink import="true" name="Melee Weapons" hidden="false" id="b812-055c-9275-3aeb" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
            <entryLink import="true" name="Ranged Weapons" hidden="false" id="5e38-e6fe-8870-de06" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
            <entryLink import="true" name="Special Equipment" hidden="false" id="23ec-00b9-bbdc-5ee4" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="2fdd-4cb8-e812-e9dc" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="set" value="1" field="defaultAmount"/>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                        <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                  <conditions>
                    <condition type="lessThan" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup type="and">
              <comment>COSTS</comment>
            </modifierGroup>
          </modifierGroups>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="20"/>
          </costs>
          <categoryLinks>
            <categoryLink name="CHIEFCON" hidden="false" id="656e-81a7-9a69-3bcb" targetId="d936-c270-e692-1054" primary="false"/>
          </categoryLinks>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
  </sharedSelectionEntries>
  <sharedRules>
    <rule name="Swimming" id="7997-2afd-3778-0255" hidden="false">
      <description>An infantry figure is able to swim, for example to cross a deep river or to disembark from a ship along the coastline. The water’s surface counts as difficult terrain when a figure uses its movement range to swim.


**Swimming Roll**
An infantry figure that wants to swim must make a swimming roll before each move in the water.


Roll 1d6 and add the armour class modifier below:
• UA: 0
• SA: -1
• FA: -2
Check the result against the table below:


• 1 — Drowned
Overburdened by their gear, victim of a cramp, or simply unable to swim, your warrior drowns in these troubled waters… whoops.
• 2-4 — Doggy Paddle
Your warrior swims, but with difficulty. They struggle against the current and move only 2”.
• 5-6 — A Fish To Water
Your warrior is an accomplished athlete. They advance their whole movement range (still counting the water as difficult terrain), taking to it like a fish to water.


Every movement phase spent in the water requires a new swimming roll.</description>
    </rule>
    <rule name="Ladders" id="89b6-d4a7-d04a-1af9" hidden="false">
      <alias>Ladder</alias>
      <alias>Rope</alias>
      <alias>Ropes</alias>
      <alias>Staircase</alias>
      <alias>Bridge</alias>
      <description>Sometimes, an infantry figure moves using a piece of scenery specifically designed for getting past an obstacle – a ladder, a hawser, a staircase, a rope bridge, etc.

In this case, the figure has to cross the obstacle in a single move: it must start its move next to the obstacle and end it on the other side.</description>
    </rule>
    <rule name="Jumping and Climbing" id="2328-3073-33f7-defe" hidden="false">
      <alias>Jumping</alias>
      <alias>Jump</alias>
      <alias>Climbing</alias>
      <alias>Climb</alias>
      <description>In some specific situations, you might want to “tempt fate” by throwing one of your figures into an audacious manoeuvre like leaping a chasm or scaling city walls with their bare hands. These follow the rules below:


**Jumping**
A piece of scenery can be crossed by jumping if it is between 1” and 4” wide or high (if you’re jumping upwards).

**Climbing**
An infantry figure can climb a sheer face between 1” and 4” high.
A figure that wants to jump or climb must be in base to base contact with the terrain piece in question. It can jump or climb at any point in its movement.
Jumping and climbing uses up movement equal to the distance being crossed, up to a maximum of 4”. 


A jump or a climb has to be made in a single move.


Remember that it’s impossible to charge after jumping or climbing.


**Agility Roll**
To jump or climb, you need to make an agility roll.
When you come to the obstacle, roll 1d6 and add the armour class modifier below:
• UA: 0
• SA: -1
• FA: -2


• 1 — **Deadly Fall**
Your warrior fails horribly and crashes out, breaks a leg, or otherwise horribly injures themselves. Your figure counts as a casualty and is removed from the gaming table.
• 2-3 — **Close Call**
Your warrior is seized by a sudden premonition and they stay rooted in place, pinned between fear and wisdom. Your figure’s movement phase ends in contact
with the obstacle.
• 4-5 — **Success**
Your warrior’s attempt narrowly succeeds. They end their movement after the jump or climb, in contact with the obstacle.
• 6 — **Acrobat**
Your warrior achieves their goal flawlessly. If the figure has any of its movement range left after the jump or climb, it can end its movement normally.</description>
    </rule>
    <rule name="Rivers" id="cef0-e912-8daf-2069" hidden="false">
      <description>Rivers can’t be crossed easily. The safest way is to send your troops over fords and bridges. Otherwise, you’ll need to use the often dangerous solution of swimming across (detailed later on p.37).</description>
      <alias>River</alias>
    </rule>
    <rule name="Fleeing" id="cc4f-ffb4-d102-d85e" hidden="false">
      <description>Fleeing lets you escape combat but watch out, because if fleeing fails, the enemy might catch and kill your figure in their stride. A choice to be made cautiously…


A figure that has already moved during the turn in which it was charged (if its movement phase was first, for example) can’t flee, no matter whether they used their whole movement range or not.


**Fleeing Roll**
To avoid combat and run away, make a fleeing roll. Roll 1d6:


• 1-3 — **The fleeing roll is failed**
The figure remains in place, paralysed by fear. The attacker makes their charge roll using the normal rules for charging.
If the attacker’s charge range brings them into base-to base contact with their target, their target is automatically destroyed. It is removed from the gaming table and counts as a casualty.


• 4-6 — **The fleeing roll succeeds.**
The attacker makes their charge roll and charge move in the normal way, as described in the charge sequence.
Then, even if the attacker has reached base-to-base contact with the target, their target flees their maximum movement range. Penalties to movement from terrain apply, but not bonuses.
Fleeing is made like a normal move, in any direction, and doesn’t need to be in a straight line.


Whether they succeed or not, a figure that has made a fleeing roll can’t move again during this turn. It counts as having already used its movement.</description>
    </rule>
    <rule name="Closing Shot" id="36d5-1d98-525c-4bce" hidden="false">
      <description>If it hasn’t moved yet this turn, a figure equipped with a ranged weapon can shoot at their attacker. Regardless what kind of weapon they’re using, they may only fire once.


However, the shot suffers a -1 penalty to hit in addition to any of the usual penalties and bonuses that affect the shot. This is because the shooter is panicking or has to rush their shot.


• If the attacker is eliminated by the closing shot, its figure is removed from the gaming table. It counts as a casualty, riddled with arrows before it can reach its target.


• If the attacker isn’t eliminated by the closing shot, they continue their charge as described in the charge sequence above.The shot fails to cut them down. In addition, the shooting figure can’t use its hand weapon and/or shield during the melee that follows the charge. They don’t have time to draw them before the enemy is in their face.


A figure that makes a closing shot can’t move or shoot again for the rest of the turn.</description>
    </rule>
    <rule name="Roads" id="be41-4ce6-eaba-76d5" hidden="false">
      <description>• Infantry on roads get a +2” bonus to their movement range.
• Cavalry on roads get a +4” bonus to their movement range.


A figure counts as on a road if any of its base is on it. The bonus only applies if the figure starts, ends and spends their whole move on-road, without coming off.</description>
    </rule>
    <rule name="Narrow Gaps" id="99e4-a786-c33d-782a" hidden="false">
      <description>Figures can’t move through gaps that are narrower than the width of their bases.


If your figures are on 25mm bases, they can’t go through spaces that are less than 25mm wide.


Don’t forget that other figures – allied and enemy – are also impassable obstacles. The gap between two figures can prove impassable if they are too close together.</description>
    </rule>
    <rule name="Impassable Ground" id="2d57-076e-7065-6f8e" hidden="false">
      <description>Some obstacles and terrain are impassable. Figures simply cannot enter them, and can’t cross them either. You should confirm impassable terrain with your opponent before the start of the game.


Attention: all figures, whether allied or enemy, are considered to be impassable obstacles and therefore cannot be crossed! 


Here’s a list of scenery elements that might count as impassable terrain:
• Buildings
• High walls
• Rocky escarpments
• Quicksand
• Chasms
• Landslides
• Geysers
• Etc.</description>
    </rule>
    <rule name="Passable Obstacles" id="8d7b-e903-79ab-cb48" hidden="false">
      <description>Passable obstacles are pieces of scenery that prevent movement, but which figures
can move over for a flat penalty to their movement range. These include hedges,
fences, walls, and ditches. 
Unlike difficult terrain, which covers stretches of the table, passable obstacles are linear elements that can’t be more than 1” high or 1” wide.


Crossing one of these obstacles costs a figure 2” of their movement.


To cross a passable obstacle, move your figure until it is in base contact with the obstacle. Check that your figure has at least 2” of movement left. If so, remove 2” for crossing the obstacle and make the rest of its move.


If a figure has less than 2” of movement left when it reaches the obstacle, the obstacle can’t be crossed,</description>
    </rule>
    <rule name="Difficult Terrain" id="db7f-2f9d-ca32-1675" hidden="false">
      <description>An infantry figure moving inside an area of difficult terrain halves their movement range. Essentially, each 1” they move counts as 2”.


Odd distances are always rounded down, as if the last inch of movement wasn’t there.


Here is a non-exhaustive list of scenery that might count as difficult terrain:
• Forests, woods, orchards, crops, thick foliage, dense undergrowth, scrub, and bushes.
• Areas of ruins, rubble, scree, talus, or craggy terrain.
• Fords, streams, and shallow water.
• Swamps, marshes, bogs, and muddy areas.
• Tilled, flooded, or muddy fields.
• Dunes and stretches of sand or snow.
• Steep and dangerous slopes.
• Stairs, steps, ladders, ropes, or rickety bridges.
• Etc.</description>
    </rule>
    <rule name="Crop" id="f1c5-d6d4-2ce6-59d1" hidden="false">
      <description>Cultivated crops can limit movement when the plants are tall or the field is muddy – in these cases, they count as difficult terrain. But if the weather permits and the crops are nice and dry, they can also be set alight.</description>
    </rule>
    <rule name="Hills" id="08bd-417d-7f5e-6ab7" hidden="false">
      <description>Hills have several effects. 
• The first is to give an advantage to combatants who are higher up than their opponents. 
• The second is to increase how far warriors with thrown or ranged weapons can shoot. These advantages are detailed in the relevant sections of the book.</description>
      <alias>Hill</alias>
    </rule>
    <rule name="Woods" id="5c02-ff77-1f75-d1e8" hidden="false">
      <description>A warrior in a wood is considered hidden as long as they are further than 2” from the edge of the wood. That means it’s impossible to target them from outside the wood. They are also unable to target figures outside the wood. This makes it very important to clearly delineate the borders of your woodlands. 


A figure within 2” of the edge of the woods is therefore visible and can be targeted by shooting and charges. 


When a figure at the edge of the woods is targeted by shooting, the shot is resolved as though there were an obstacle in the way – we assume the target is ducking behind a tree trunk or similar. 


A figure in the interior of an area of woodland can target other figures within the same area of woodland if they are within 4”.</description>
      <alias>Wood</alias>
    </rule>
    <rule name="Fighting on a Slope" id="07ca-a276-4caa-b1d7" hidden="false">
      <description>Sometimes fights will take place on a steep slope, on the side of a hill, or other unexpected places. One enemy is below the other, even though they’re in base-to-base contact.


Sometimes it’s difficult to tell whether one figure is above another. It is obvious most of the time, but if not then prioritise fair play and give your opponent the benefit of the doubt.


When fighting on a slope, the lower figure gets a -1 penalty to hit its enemy.</description>
    </rule>
    <rule name="Defending an Obstacle" id="7dc9-1766-3e23-83b6" hidden="false">
      <description>Figures can use obstacles, barriers, or barricades as defensive positions. Any piece of scenery that represents a passable obstacle less than 1” high is considered a defensive obstacle.


Defensive obstacles work against both infantry and cavalry charges. 


A figure is considered to be defending an obstacle while it is in base-to-base contact with it, and able to see over it.


A figure who wants to charge an enemy that’s defending an obstacle does so by moving to within 1” of the enemy’s base and in base-to-base contact with the obstacle.


Figures get no charge bonus when attacking an enemy who is defending an obstacle.</description>
    </rule>
    <rule name="Pushing Back" id="0050-9ccc-dad0-5a5b" hidden="false">
      <alias>Push back</alias>
      <description>An enemy can be pushed back as soon as two opposing figures are engaged in melee.


However, it’s impossible to push back an enemy who just charged. Their momentum is too great to successfully drive them backwards.


To push back an enemy figure, you must make a strength roll based on your enemy’s armour class. The better their armour class, the harder it is to push them back.


Pushing back an opponent happens instead of fighting them. However, when melee is simultaneous you’ll still need to weather your enemy’s blows even if you manage to shove them away. Your enemy is only pushed away at the end of the melee.


**Strength Roll**
When you resolve the melee in which you want to push your enemy back, roll 1d6 and add the modifier for your opponent’s armour class:
• UA: 0
• SA: -1
• FA: -2


Compare the final result with the table below


• 1 — **Low Blow**
In trying to shove your enemy, you take a low blow.
Resolve an improvised weapon attack against your figure, even if the enemy has already made its attacks for this melee.


• 2-3 — **Failure**
It’s a failure, your kick to push the foe back wasn’t powerful enough to throw them off.


• 4-5 — **Success**
Your warrior manages to push back its opponent, who retreats 1” if they can. Your warrior no longer counts as engaged in combat.


• 6 — **Coup double!**
Your warrior successfully pushes back their enemy, who retreats 1” if they can and also takes an improvised weapon attack.


When you successfully push back an enemy, move the enemy figure 1” directly away from yours. If their positions prevent this movement, the retreating figure makes a 1” agility roll to try and achieve a 1” gap between the two enemies. If even this is impossible, the combatants are considered to still be engaged in melee, and pushing the enemy back has no effect.


You cannot push back your enemies while engaged by several in a multiple combat. Your figure is trapped by all the warriors surrounding it.</description>
    </rule>
    <rule name="Fall" id="1f3a-5b0c-af91-c9a7" hidden="false">
      <alias>Falling</alias>
      <description>If the 1” move when an enemy is pushed back takes it into thin air, the figure suffers a fall:
• If the drop is 4” or less, make an agility roll as though jumping (see p.36).
• If the drop is more than 4”, the fall is lethal. Remove the figure from the game as a casualty.</description>
    </rule>
    <rule name="Lighting a Fire" id="5678-8e6b-1e0d-96e4" hidden="false">
      <alias>Fire Roll</alias>
      <description>A figure that wants to set fire to a piece of scenery must always have started its turn in base-to-base contact with the terrain piece they want to set ablaze


To set fire to a piece of scenery, roll 1d6:


• If the figure doesn’t have a torch:
On the first try, the fire catches on a 6.


• If the figure has a torch:
On the first try, the fire catches on a 4+.


The score needed decreases gradually, and goes down by 1 for each turn the figure spends trying to light the fire, to a minimum of 3+.


A figure that’s setting a fire is consumed by its task and can’t take any other actions until the fire catches. After that, it can act as the controlling player wishes. If an action (including shooting or engaging in melee) interrupts their continuing attempts to set the fire, the process has to start again from scratch.</description>
    </rule>
    <rule name="Torch" id="759a-f4c0-4e1c-9db3" hidden="false">
      <description>A figure can carry a flaming torch, or any other equipment containing fire or embers. For simplicity’s sake, these are all called ‘torches’.


A figure can start the game with a torch, or grab one from a piece of burning scenery somewhere on the field of battle. 
Don’t forget to specify at the start of the game which pieces of scenery can provide torches: bread ovens, campfires, hearths, forges, etc.


**Picking Up a Torch**
When a figure comes into base-to-base contact with a piece of scenery that contains flame, it can pick up a torch.
This can happen at any point in its movement phase.
Picking up a torch ends the figure’s movement phase.
You can show the figure has a torch by, for example, adding a little bit of cotton wool.


From now on, the figure fights with an improvised weapon instead of its normal armaments, but has a torch and all the abilities it grants.

**Dropping a Torch**
A figure can get rid of its torch at any point in the game turn to recover its starting equipment. A torch that is discarded this way extinguishes itself and disappears.


Torches don’t inflict fire damage on their bearers.


You can easily imagine how a warrior in the middle of a village, seized by a sudden fit of pyromania, might grab the embers of a camp fire to turn a charming hamlet into charred and smoking ruins. Watch out for the flashback though!</description>
      <alias>Torches</alias>
    </rule>
    <rule name="Spreading Fire" id="bb05-32b3-15b5-718e" hidden="false">
      <description>Fire can spread if there is flammable scenery within 2” of a burning piece of scenery. At the start of the fire phase, before lighting any fires, the player with the initiative rolls 1d6 for each flammable piece of scenery within 2” of an existing flame:
• On a 6, the element catches fire.
• If the test is failed, the flames have chosen to spare it – or the wind is against them! The test will need to be made again the following turn.</description>
    </rule>
    <rule name="Fire Damage" id="f038-2db7-71e5-447e" hidden="false">
      <alias>Fire Burns</alias>
      <description>Fire only starts inflicting damage and spreading in the turn after it catches.


Figures within 2” of a piece of burning scenery take damage. Fire ignores a warrior’s defences.


Roll 1d6 for each figure within 2” of burning scenery.
On a 5+ the figure catches fire and is consumed with a scream of anguish. It is immediately removed from the table and counts as a casualty.</description>
    </rule>
    <rule name="Morale" id="1d7b-19f6-fcbc-4c9d" hidden="false">
      <description>Morale checks are made at the end of the turn, after the fire phase, whenever:
• Your army loses its chieftain.
• Your army has lost 50% or more (rounding up) of its starting strength (chieftains included). You’ll need to test morale when you reach 50% of your starting numbers, and when you reach 50% of those survivors, and so on.


Make a morale check for each figure in your army that isn’t engaged in melee and isn’t immune to morale checks. If it is failed, the figure flees the game board and counts as a casualty.


Roll 1d6 for each figure:
• 1 — **Rout**
The warrior is demoralised and immediately quits the battlefield. They count as a casualty.


• 2-6 — **Stoic**
The warrior remains in place and continues to fight. For now…</description>
    </rule>
    <rule name="Looting" id="4963-6680-4bbf-8ba4" hidden="false" noindex="false">
      <alias>Pillage</alias>
      <alias>Loot</alias>
      <alias>Transporting</alias>
      <description>You should agree what counts as loot before the game begins.


Lots of scenery could work as loot markers. Here, a hessian sack makes a great loot marker. But a penny or a printed token works just as well.


Here’s a short non-exhaustive list that might help:
• Abandoned chest of valuables: 3 loot
• Chest/basket/sack of cloth: 1 loot
• Chest/basket/sack of food: 1 loot
• Sacred relic: 3 loot
• Keg/jar or wine/beer: 2 loot


To pick up loot, a figure just needs to be in base-to-base contact with it during its movement phase. The figure then counts as carrying the loot, and its movement ends for the turn.


An infantry figure can carry up to 3 loot. Watch out though, because each loot marker inflicts its own movement penalty.


A figure loses 1” of movement for each loot transported (living beings impose their own restrictions on p.69).

**Handing Off Loot**
You can absolutely pass over one or more loot from one figure to another during the movement phase. 
To do so, a figure carrying loot must be in base-to-base contact with a friendly figure. The transfer takes place the moment their bases touch.


This can happen at any point in the figures’ movement, but contact immediately stops both figures involved in the exchange from moving. They can’t move again for the rest of the turn.


**Abandoning Loot**
A figure carrying loot can choose to drop it where they stand, but only at the start of their movement phase. The figure is then free to act and move as desired for the rest of the turn. As for the loot, from then on it’s at the mercy of any figure that comes by, be they friend or foe.

**Loot and Shooting**
A figure carrying loot can’t shoot. It simply doesn’t have time to drop its loot, draw its weapon, aim, and fire one after another.


**Loot and Melee**
When a figure carrying loot has to fight in melee, it temporarily drops the loot at its side for the duration of the melee. If the figure is eliminated at the end of the melee, its loot is taken by the victor if they want it. Otherwise, the loot is left where it fell.</description>
    </rule>
    <rule name="Finding Loot" id="490f-a39a-8bdb-28a9" hidden="false">
      <alias>Searching</alias>
      <description>Here’s a non-exhaustive list of scenery pieces that might contain loot:
• Building
• Well
• Haystack
• Chest/barrel
• Cave
• Barn/outbuilding
• Outside furniture


When you want to search an target, your figure must be in base-to-base contact with it, or inside it if it’s a building


When you come into contact, or start your movement phase in contact, make a search check with 1d6 and compare the result to the table below:
• 1 — **Empty!**
If you get a 1, the action ends.There’s nothing hidden here, you can move on. This place, or this thing, is considered empty for the rest of the game. You can mark a building as empty with a token or a scenic marker – for example, a destroyed or empty chest.


• 2-3 — **Nothing.**
You find nothing for now, but you can search again next turn if you want.


• 4-6 — **Found it!**
Check the successful search table to see what you’ve found.


If your search roll succeeded, roll 1d6 and compare the result to the table below:
• 1-3 — **Slim pickings**
You find very little. You pick up 1 loot.


• 4-5 — **Pretty penny**
Aha! Finally something interesting. You pick up 2 loot.


• 6 — **Exceptional loot**
The start of your hoard? You collect 3 loot</description>
    </rule>
    <rule name="Seize Them!" id="b884-777d-09c2-9a72" hidden="false">
      <alias>Seize</alias>
      <alias>Capture</alias>
      <alias>Animal</alias>
      <alias>Prisoner</alias>
      <description>If you want to capture an animal or a human, you have to move into contact with its base. Once in contact, you have captured it and your movement ends.


When moving with a prisoner, a figure must use the lower of it and the prisoner’s maximum movement range. A figure can only escort a single prisoner at once.


Prisoners can’t cross any obstacles, and you can choose to abandon them on the spot at the start of your figure’s movement phase, just like ordinary loot. Difficult terrain penalties also apply to captured elements.


Here’s a non-exhaustive list of elements that could be captured, with their movement range, their armour class (in case you want them killed rather than captured), and their worth in loot markers:


Adult 6” - UA - 4 loot
Child 5” - UA - 3 loot
Cow/Ox 4” - UA - 3 loot
Sheep 4” - UA - 2 loot
Pig 4” - UA - 2 loot
Horse 9” - UA - 4 loot
Donkey/mule 6” - UA - 3 loot


A figure escorting a prisoner can’t carry any other loot or captives.


Smaller living creatures like piglets, geese, ducks, and chickens, all count as normal loot but with specific values. You can therefore carry several, up to a maximum value of 3 loot.


• Piglet 2 loot
• Chicken/goose/duck/quail 1 loot

**Value**
One loot marker is considered to be worth 5 gold pieces.
Although this value has no effect on the battle, it does open up opportunities for stories and campaigns based on the game’s currency.</description>
    </rule>
  </sharedRules>
</gameSystem>
